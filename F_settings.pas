unit F_settings;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.FileCtrl, inifiles, u_dm;

type
  TFsettings = class(TForm)
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    GroupBox2: TGroupBox;
    OpenDialog1: TOpenDialog;
    Edit1: TEdit;
    Button3: TButton;
    Button4: TButton;
    Label1: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fsettings: TFsettings;
  Init:Tinifile;
implementation

{$R *.dfm}

procedure TFsettings.Button1Click(Sender: TObject);
var path:string;
begin
  Init.WriteString('paths','dir',Label1.Caption);
  if edit1.Text<>'' then
  Init.WriteString('paths','bd',Edit1.Text);
  Fsettings.Close;
  dm.init_bd;
end;

procedure TFsettings.Button2Click(Sender: TObject);
begin
Fsettings.Close;
end;

procedure TFsettings.Button3Click(Sender: TObject);
begin
if opendialog1.Execute then
begin
  Edit1.Text:=Opendialog1.FileName;
end;
end;

procedure TFsettings.Button4Click(Sender: TObject);
var chosenDirectory:string;
options : TSelectDirOpts;
begin
//options:=TSelectDirOpts(sdAllowCreate, sdPerformCreate, sdPrompt);
if SelectDirectory(chosenDirectory,[sdAllowCreate, sdPerformCreate, sdPrompt],0)
  then Label1.Caption:=chosenDirectory;
end;

procedure TFsettings.FormActivate(Sender: TObject);
begin
Init := TInifile.Create(extractfilepath(paramstr(0)) + 'setup.ini');
SetCurrentDir(Init.ReadString('paths', 'dir', extractfilepath(paramstr(0))));
Label1.Caption:= Init.ReadString('paths', 'dir', extractfilepath(paramstr(0)));
Edit1.Text:=Init.ReadString('paths', 'bd', 'photodruck_request.accdb');
end;

procedure TFsettings.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Init.Free;
end;

end.
