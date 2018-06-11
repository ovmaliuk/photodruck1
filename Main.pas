unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,  Vcl.ExtCtrls, Vcl.ComCtrls, f_product, f_params, f_models, f_stock, f_client, f_order,
  f_settings, inifiles, u_dm;

type
  TFmain = class(TForm)
    StatusBar1: TStatusBar;
    TreeView1: TTreeView;
    Splitter1: TSplitter;
    Panel1: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure TreeView1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fmain: TFmain;
  f_bd:boolean;
implementation

{$R *.dfm}

procedure TFmain.FormActivate(Sender: TObject);
var Init:TInifile;
path:String;
begin
Init := TInifile.Create(extractfilepath(paramstr(0)) + 'setup.ini');
 if fileexists(Init.ReadString('paths','bd','photodruck_request.accdb')) then
 begin
  dm.init_bd;
  f_bd:=true;
 end;

end;

procedure TFmain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Dm.ADOConnection1.Connected:=false;
end;

procedure TFmain.FormCreate(Sender: TObject);
var Init:TInifile;
path, dir:String;
t_date:Tdate;
begin
Treeview1.FullExpand;
  Init := TInifile.Create(extractfilepath(paramstr(0)) + 'setup.ini');
  if Init.ReadString('paths', 'dir', extractfilepath(paramstr(0))) = '' then
  Showmessage('Определите папку заказов в настройках!')
  else dir:=Init.ReadString('paths', 'dir', extractfilepath(paramstr(0)));
  Dm.ADOConnection1.Connected:=false;
  {t_date:=Now;
  path:=DateToStr(t_date);
  Delete(path,1,6);
  if not DirectoryExists(dir+'\'+path) then
  CreateDir(dir+'\'+path);}
  if not fileexists(Init.ReadString('paths','bd','photodruck_request.accdb')) then
  begin
    Showmessage('Файл БД не найден. Зайдите в настройки');
    f_bd:=false;
  end
  else
    begin
     // if Dm.ADOConnection1.Connected=false then
      dm.init_bd;
      f_bd:=true;
    end;
  Init.Free;
end;

procedure TFmain.TreeView1Click(Sender: TObject);
begin
if f_bd then
begin
  if Treeview1.Selected.Text='Заготoвки' then
  Fproduct.show;

  if Treeview1.Selected.Text='Параметры моделей' then
  Fparams.show;

  if Treeview1.Selected.Text='Модели' then
  Fmodels.show;

  if Treeview1.Selected.Text='Склад' then
  Fstock.show;

  if Treeview1.Selected.Text='Клиент' then
  Fclient.show;

  if Treeview1.Selected.Text='Заказы' then
  Forder.Show;
end;
  if Treeview1.Selected.Text='Настройки' then
  Fsettings.Show;
end;

end.
