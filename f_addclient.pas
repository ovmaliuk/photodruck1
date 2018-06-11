unit f_addclient;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, u_dm, Data.DB, ShellApi,
  Inifiles, fileCtrl;

type
  TFaddclient = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Memo1: TMemo;
    Edit2: TEdit;
    Edit1: TEdit;
    MaskEdit1: TMaskEdit;
    Edit4: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Faddclient: TFaddclient;
  Init:Tinifile;
implementation

{$R *.dfm}

procedure TFaddclient.Button1Click(Sender: TObject);
var button_select:Integer;
dir:string;
begin
  Init := TInifile.Create(extractfilepath(paramstr(0)) + 'setup.ini');
  dir:=Init.readString('paths', 'dir', extractfilepath(paramstr(0)));
if faddclient.Tag=0 then
begin
  dM.ADOnum.SQL.Clear;
  dm.Adonum.Sql.Add('SELECT id_client');
  dm.Adonum.Sql.Add('FROM client');
  dm.Adonum.Sql.Add('where FIO = '+#39+Edit1.Text+#39);
  dm.ADOnum.Active:=true;
  if (Dm.ADOnum.RecordCount>0) then
  begin
    Showmessage(Edit1.Text+' уже есть в таблице');
  end;
  if (Dm.ADOnum.RecordCount<1) then
   Dm.ADOclient.Insert
end
else
begin
  Dm.ADOclient.Edit;
end;

if (Dm.ADOclient.State=dsEdit) or (Dm.ADOclient.State=dsInsert) then
begin
  Dm.ADOclient.FieldByName('FIO').Asstring:=Edit1.Text;
  Dm.ADOclient.FieldByName('source').Asstring:=Edit2.Text;
  Dm.ADOclient.FieldByName('tel').asstring:=maskedit1.Text;
  Dm.ADOclient.FieldByName('adress').asstring:=Memo1.Text;
  Dm.ADOclient.FieldByName('e_mail').asstring:=Edit4.Text;
  if Faddclient.Tag=1 then
  begin
    RenameFile(dir+Dm.ADOclient.FieldByName('work_dir').AsString, dir+'\'+Edit1.Text);
  end;
  Dm.ADOclient.FieldByName('work_dir').AsString:='\'+Edit1.text;
  Dm.ADOclient.Post;
  if not DirectoryExists(dir+'\'+Edit1.Text) then
  CreateDir(dir+'\'+Edit1.text);
end;
Faddclient.Close;
Init.Free;
end;

procedure TFaddclient.Button2Click(Sender: TObject);
begin
Faddclient.Close;
end;

procedure TFaddclient.Button3Click(Sender: TObject);
var s:string;
begin
s:=Edit2.Text;
if Edit2.Text<>'' then
ShellExecute( Handle, 'open',Pchar(s), nil, nil, SW_NORMAL );
end;

procedure TFaddclient.FormActivate(Sender: TObject);
begin
if Faddclient.Tag=0 then
begin

end;
if Faddclient.Tag=1 then
begin

end;
end;

end.
