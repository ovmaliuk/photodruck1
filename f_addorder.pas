unit f_addorder;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Fr_neworder,
  Vcl.ComCtrls, u_dm, Data.DB, inifiles;

type
  TFaddorder = class(TForm)
    Panel1: TPanel;
    Frneworder1: TFrneworder;
    Bevel1: TBevel;
    Label1: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label2: TLabel;
    DateTimePicker2: TDateTimePicker;
    Label3: TLabel;
    Memo1: TMemo;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Button1: TButton;
    Button2: TButton;
    procedure FormActivate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Faddorder: TFaddorder;
  Init:TIniFile;
implementation

{$R *.dfm}

procedure TFaddorder.Button1Click(Sender: TObject);
var you_can, modify:boolean;
t_date:Tdate;
path:String;
dir:string;
begin
  Init := TInifile.Create(extractfilepath(paramstr(0)) + 'setup.ini');
  dir:=Init.readString('paths', 'dir', extractfilepath(paramstr(0)));
 you_can:=true;
 modify:=false;
 if Dm.ADOqclient.FieldByName('id_client').Value<>Dm.ADOQorder.FieldByName('order.id_client').value then
 modify:=true;
 dM.ADOnum.SQL.Clear;
 dm.Adonum.Sql.Add('SELECT id_client');
 dm.Adonum.Sql.Add('FROM [order]');
 dm.Adonum.Sql.Add('where id_client = '+IntToStr(Dm.ADOqclient.FieldByName('id_client').Value)+' and cancel=false and payment=false');
 dm.ADOnum.Active:=true;
 if ((Dm.ADOnum.RecordCount>0) and (Faddorder.Tag=0)) or ((Dm.ADOnum.RecordCount>0) and (Faddorder.Tag=1) and modify) then
 begin
   Showmessage(Dm.ADOqclient.FieldByName('fio').AsString+' уже есть в заказах');
   you_can:=false;
  end;
if faddorder.Tag=0 then
begin
  if (Dm.ADOnum.RecordCount<1) or you_can then
   Dm.ADOQorder.Insert
end
else
begin
  if (Dm.ADOnum.RecordCount<1) or you_can then
  Dm.ADOQorder.Edit;
end;

if (Dm.ADOQorder.State=dsEdit) or (Dm.ADOQorder.State=dsInsert) then
begin
  t_date:=Now;
  path:=DateToStr(t_date);
  Delete(path,1,6);
  Dm.ADOQorder.FieldByName('order.id_client').value:=Dm.ADOqclient.FieldByName('id_client').Value;
  Dm.ADOQorder.FieldByName('date_order').value:=DateTimePicker1.Date;
  if dateTimePicker2.Checked then
  Dm.ADOQorder.FieldByName('date_term').Value:=DateTimePicker2.Date
  else Dm.ADOQorder.FieldByName('date_term').Value:=Null;
  Dm.ADOQorder.FieldByName('note').asstring:=Memo1.Text;
  Dm.ADOQorder.FieldByName('cancel').value:=checkbox2.Checked;
  Dm.ADOQorder.FieldByName('payment').value:=checkbox1.Checked;
  Dm.ADOQorder.Post;
  //Dm.ADOQorder.Active:=false;
  //Dm.ADOQorder.Active:=true;
  if not DirectoryExists(dir+Dm.ADOqclient.FieldByName('work_dir').asstring+'\'+path+'\'+IntToStr(Dm.ADOQorder.FieldByName('id').Value)) then
  begin
    CreateDir(dir+Dm.ADOqclient.FieldByName('work_dir').asstring+'\'+path);
    CreateDir(dir+Dm.ADOqclient.FieldByName('work_dir').asstring+'\'+path+'\'+IntToStr(Dm.ADOQorder.FieldByName('id').Value));
  end;
end;
Init.Free;
Faddorder.Close;
end;

procedure TFaddorder.Button2Click(Sender: TObject);
begin
Faddorder.Close;
end;

procedure TFaddorder.FormActivate(Sender: TObject);
begin
  dM.Adoqclient.SQL.Clear;
  dM.Adoqclient.Sql.Add('SELECT client.Id_client, client.FIO, client.tel, client.e_mail, client.work_dir');
  dm.Adoqclient.Sql.Add('FROM client');
  dm.Adoqclient.Active:=true;
if Faddorder.Tag=0 then
begin

end;
if Faddorder.Tag=1 then
begin

end;
end;

end.
