unit f_addorder_pr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ToolWin, Vcl.ComCtrls,
  Vcl.Grids, Vcl.DBGrids, u_dm, f_stock, Vcl.ExtCtrls, Vcl.StdCtrls, f_addstock, inifiles;

type
  TFaddorder_pr = class(TForm)
    DBGrid1: TDBGrid;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    CheckBox1: TCheckBox;
    Label2: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure ToolButton1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2Exit(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Faddorder_pr: TFaddorder_pr;
  f_value:Integer;
implementation

{$R *.dfm}

procedure TFaddorder_pr.Button1Click(Sender: TObject);
var you_can, modify:Boolean;
sum:real;
i:Integer;
dir, path:string;
Init:TInifile;
t_date:Tdate;
begin
 Init := TInifile.Create(extractfilepath(paramstr(0)) + 'setup.ini');
 dir:=Init.readString('paths', 'dir', extractfilepath(paramstr(0)));
 t_date:=Now;
 path:=DateToStr(t_date);
 Delete(path,1,6);
you_can:=true;
if Dm.ADOQorder_pr.FieldByName('model').Value=Dm.ADOQstock.FieldByName('id_stock').Value then
modify:=false
else modify:=true;
Faddstock.currency(Edit2);
if (Faddorder_pr.Tag=0) or modify then
begin
   dM.ADOnum.SQL.Clear;
   dm.Adonum.Sql.Add('SELECT model');
   dm.Adonum.Sql.Add('FROM order_pr');
   dm.Adonum.Sql.Add('where model='+IntToStr(Dm.ADOQstock.FieldByName('id_stock').Value)+'and id_order='+IntToStr(Dm.ADOQorder.FieldByName('id').Value));
   dm.ADOnum.Active:=true;
   if Dm.ADOnum.RecordCount>0 then
   begin
    Showmessage('Данная модель уже внесена в заказ');
    you_can:=false;
   end
   else you_can:=true;
end;
if (Faddorder_pr.tag=0) and you_can then
Dm.ADOQorder_pr.Insert
else if (Faddorder_pr.tag=1) and you_can then
      Dm.ADOqorder_pr.Edit;
if (Dm.ADOQorder_pr.State=dsInsert)  or (Dm.ADOQorder_pr.State=dsEdit)then
begin
  if not DirectoryExists(dir+Dm.ADOqorder.FieldByName('work_dir').asstring+'\'+path+'\'+IntToStr(Dm.ADOQorder.FieldByName('id').Value)+'\'+(Dm.ADOQstock.FieldByName('model_name').asstring)) then
  CreateDir(dir+Dm.ADOqorder.FieldByName('work_dir').asstring+'\'+path+'\'+IntToStr(Dm.ADOQorder.FieldByName('id').Value)+'\'+(Dm.ADOQstock.FieldByName('model_name').asstring));
  Dm.ADOQorder_pr.FieldByName('path').AsString:=Dm.ADOqorder.FieldByName('work_dir').asstring+'\'+path+'\'+IntToStr(Dm.ADOQorder.FieldByName('id').Value)+'\'+Dm.ADOQstock.FieldByName('model_name').asstring;
  Dm.ADOQorder_pr.FieldByName('id_order').Value:=Dm.ADOQorder.FieldByName('id').Value;
  Dm.ADOQorder_pr.FieldByName('model').Value:=Dm.ADOQstock.FieldByName('id_stock').Value;
  if Edit1.Text='' then
  edit1.Text:=IntToStr(0);
  if edit2.Text='' then
  Edit2.Text:=IntToStr(0);
  Dm.ADOQorder_pr.FieldByName('value_pr').Value:=StrToInt(Edit1.Text);
  Dm.ADOQorder_pr.FieldByName('cost').Value:=StrToFloat(Edit2.Text);
  Dm.ADOQorder_pr.FieldByName('ready').Value:=Checkbox1.Checked;
  Dm.ADOqorder_pr.Post;
  i:=StrToInt(Edit1.Text)-f_value;
  Dm.ADOQstock.Edit;
  if Faddorder_pr.Tag=1 then
  Dm.ADOQstock.FieldByName('num').Value:=Dm.ADOQstock.FieldByName('num').Value-i
  else Dm.ADOQstock.FieldByName('num').Value:=Dm.ADOQstock.FieldByName('num').Value-StrToInt(Edit1.Text);
  if (Dm.ADOQstock.FieldByName('num').Value<0) then
  Dm.ADOQstock.FieldByName('reserve').Value:=true;
  if (Dm.ADOQstock.FieldByName('num').Value=0) then
  Dm.ADOQstock.FieldByName('arhive').Value:=true;
  Dm.ADOQstock.Post;
  Dm.ADOQstock.Active:=false;
  Dm.ADOQstock.Active:=true;
  Dm.ADOstock.Active:=false;
  Dm.ADOstock.Active:=true;
end;
  dm.ADOQorder_pr.First;
  sum:=0;
  for I := 1 to Dm.ADOQorder_pr.RecordCount do
  begin
    sum:=sum+Dm.ADOQorder_pr.FieldByName('cost').Value;
    Dm.ADOQorder_pr.Next;
  end;
  Dm.ADOQorder.Edit;
  Dm.ADOQorder.FieldByName('summa').Value:=sum;
  Dm.ADOQorder.Post;
  Init.Free;
  Faddorder_pr.Close;
end;

procedure TFaddorder_pr.Button2Click(Sender: TObject);
begin
Faddorder_pr.Close;
end;

procedure TFaddorder_pr.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
if Dm.ADOQstock.RecordCount>0 then
begin
  if Dm.ADOQstock.FieldByName('client').Value then
  Dbgrid1.Canvas.Brush.Color:=clskyBlue;
  //else Dbgrid1.Canvas.Brush.Color:=clWindow;
  if Dm.ADOQstock.FieldByName('reserve').Value then
  Dbgrid1.Canvas.Brush.Color:=clMoneyGreen;
  //else  Dbgrid1.Canvas.Brush.Color:=clWindow;
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;
end;

procedure TFaddorder_pr.Edit2Exit(Sender: TObject);
begin
Faddstock.currency(Sender);
end;

procedure TFaddorder_pr.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
Faddstock.Edit1KeyPress(Sender,key);
end;

procedure TFaddorder_pr.FormActivate(Sender: TObject);
begin
Dm.ADOQstock.Active:=false;
Dm.ADOQstock.Active:=true;
if Dm.ADOQstock.RecordCount>0 then
Button1.Enabled:=true
else Button1.Enabled:=false;
end;

procedure TFaddorder_pr.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Dm.ADOQorder.Locate('id',Dm.ADOQorder_pr.FieldByName('id_order').Value,[]);
end;

procedure TFaddorder_pr.ToolButton1Click(Sender: TObject);
begin
Fstock.ToolButton1Click(Sender);
end;

end.
