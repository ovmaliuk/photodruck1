unit F_client;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u_dm, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.ToolWin, f_addclient;

type
  TFclient = class(TForm)
    DBGrid1: TDBGrid;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fclient: TFclient;

implementation

{$R *.dfm}

procedure TFclient.ToolButton1Click(Sender: TObject);
begin
FaddClient.Tag:=0;
Faddclient.Caption:='Добавление';
Faddclient.Show;
with Faddclient do
begin
  Memo1.Text:='';
  Edit1.Text:='';
  Edit2.Text:='';
  MaskEdit1.Text:='';
  Edit4.Text:='';
end;
end;

procedure TFclient.ToolButton3Click(Sender: TObject);
begin
FaddClient.Tag:=1;
Faddclient.Caption:='Редактирование';
Faddclient.Show;
with faddclient do
begin
  Memo1.Text:=Dm.ADOclient.FieldByName('adress').AsString;
  Edit1.Text:=Dm.ADOclient.FieldByName('FIO').AsString;
  Edit2.Text:=Dm.ADOclient.FieldByName('source').AsString;
  MaskEdit1.Text:=Dm.ADOclient.FieldByName('tel').AsString;
  Edit4.Text:=Dm.ADOclient.FieldByName('e_mail').AsString;
end;
end;

procedure TFclient.ToolButton5Click(Sender: TObject);
begin
  {dM.ADOnum.SQL.Clear;
  dm.Adonum.Sql.Add('SELECT id_client');
  dm.Adonum.Sql.Add('FROM client');
  dm.Adonum.Sql.Add('where FIO = '+#39+Edit1.Text+#39);
  dm.ADOnum.Active:=true;}
end;

end.
