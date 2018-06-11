unit F_product;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u_dm, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Controls,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components, Vcl.Buttons,
  Vcl.Bind.Navigator, Data.Bind.DBScope;

type
  TFproduct = class(TForm)
    DBGrid1: TDBGrid;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Memo1: TMemo;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    procedure ToolButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure ToolButton5Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fproduct: TFproduct;

implementation
var i_button, e_button:boolean;
{$R *.dfm}

procedure TFproduct.Button1Click(Sender: TObject);
begin

if (i_button) and (Edit1.Text<>'') then
begin

  dM.ADOnum.SQL.Clear;
  dm.Adonum.Sql.Add('SELECT product.name_pr');
  dm.Adonum.Sql.Add('FROM product');
  dm.Adonum.Sql.Add('where name_pr ='+#39 +Edit1.Text+#39);
  dm.ADOnum.Active:=true;
  dm.Adonum.ExecSQL;
  if dm.ADOnum.RecordCount=0 then
  begin
    dm.ADOpr.Insert;
    Dm.ADOpr.FieldByName('name_pr').AsString:=Edit1.Text;
    Dm.ADOpr.FieldByName('short_name').AsString:=Edit2.Text;
    Dm.ADOpr.FieldByName('instruction').AsString:=Memo1.Text;
    Dm.ADOpr.Post;
    Edit1.Text:='';
    Edit2.Text:='';
    Memo1.Text:='';
    i_button:=false;
    Dm.ADOpr.Active:=false;
    Dm.ADOpr.Active:=true;
  end
  else ShowMessage('Заготовка существует')
end
else if (Edit1.Text='') and (i_button) then
     ShowMessage('Введите название заготовки');

if (e_button) and (Edit1.Text<>'') then
begin
  dm.ADOpr.Edit;
  Dm.ADOpr.FieldByName('name_pr').AsString:=Edit1.Text;
  Dm.ADOpr.FieldByName('short_name').AsString:=Edit2.Text;
  Dm.ADOpr.FieldByName('instruction').AsString:=Memo1.Text;
  Dm.ADOpr.Post;
  e_button:=false;
  Edit1.Text:='';
  Edit2.Text:='';
  Memo1.Text:='';
end
else if (Edit1.Text='') and (e_button) then
     ShowMessage('Введите название заготовки');

end;

procedure TFproduct.Button2Click(Sender: TObject);
begin
Edit1.Text:='';
Edit2.Text:='';
e_button:=false;
i_button:=false;
end;

procedure TFproduct.Edit1Exit(Sender: TObject);
var s:string;
begin
if (edit1.Text<>'') and (i_button) then
begin
  s:=Edit1.Text;
  Delete(s,4,length(s)-3);
  Edit2.Text:=s;
end;
end;

procedure TFproduct.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#9 then
Edit2.SetFocus;
end;

procedure TFproduct.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
Button1.OnClick(Sender);
if key=#27 then
Button2.OnClick(Sender);
end;

procedure TFproduct.FormActivate(Sender: TObject);
begin
Memo1.Text:='';
end;

procedure TFproduct.ToolButton1Click(Sender: TObject);
begin
Edit1.SetFocus;
i_button:=true;
Memo1.Text:='';
end;

procedure TFproduct.ToolButton2Click(Sender: TObject);
begin
Edit1.Text:=DM.ADOpr.FieldByName('name_pr').AsString;
Edit2.Text:=Dm.ADOpr.FieldByName('short_name').AsString;
Memo1.Text:=Dm.ADOpr.FieldByName('instruction').AsString;
e_button:=true;
end;

procedure TFproduct.ToolButton5Click(Sender: TObject);
begin
Button1.OnClick(sender);
end;

procedure TFproduct.ToolButton6Click(Sender: TObject);
var button_select:Integer;
begin
 dM.ADOnum.SQL.Clear;
 dm.Adonum.Sql.Add('SELECT id_model');
 dm.Adonum.Sql.Add('FROM models');
 dm.Adonum.Sql.Add('where id_pr='+IntToStr(Dm.ADOpr.FieldByName('id_pr').Value));
 dm.ADOnum.Active:=true;
 if dm.ADOnum.RecordCount>0 then
 showmessage('Существует модель с данной заготовкой. Удалите сначала модель')
 else
 begin
  button_select:=MessageDlg('Удаляем запись '+DM.ADOpr.FieldByName('name_pr').AsString+'? Вы уверены? Подумайте еще раз...',mtConfirmation,mbOKCancel,0);
  if button_Select = mrOK     then Dm.ADOpr.Delete;
 end;
end;

end.
