unit F_params;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u_dm, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls;

type
  TFparams = class(TForm)
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
    procedure ToolButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure ToolButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fparams: TFparams;

implementation
var i_button, e_button:boolean;
{$R *.dfm}

procedure TFparams.Button1Click(Sender: TObject);
begin

if (i_button) and (Edit1.Text<>'') then
begin

  dM.ADOnum.SQL.Clear;
  dm.Adonum.Sql.Add('SELECT naim');
  dm.Adonum.Sql.Add('FROM model_param');
  dm.Adonum.Sql.Add('where naim ='+#39 +Edit1.Text+#39);
  dm.ADOnum.Active:=true;
  dm.Adonum.ExecSQL;
  if dm.ADOnum.RecordCount=0 then
  begin
    dm.ADOparams.Insert;
    Dm.ADOparams.FieldByName('naim').AsString:=Edit1.Text;
    Dm.ADOparams.Post;
    Edit1.Text:='';
    i_button:=false;
  end
  else ShowMessage('Параметр существует')
end
else if (Edit1.Text='') and (i_button) then
     ShowMessage('Введите параметр');

if (e_button) and (Edit1.Text<>'') then
begin

  dM.ADOnum.SQL.Clear;
  dm.Adonum.Sql.Add('SELECT naim');
  dm.Adonum.Sql.Add('FROM model_param');
  dm.Adonum.Sql.Add('where naim ='+#39 +Edit1.Text+#39);
  dm.ADOnum.Active:=true;
  dm.Adonum.ExecSQL;
  if dm.ADOnum.RecordCount=0 then
  begin
    dm.ADOparams.Edit;
    Dm.ADOparams.FieldByName('naim').AsString:=Edit1.Text;
    Dm.ADOparams.Post;
    Edit1.Text:='';
    e_button:=false;
  end
  else ShowMessage('Параметр существует')
end
else if (Edit1.Text='') and (e_button) then
     ShowMessage('Введите параметр');

end;

procedure TFparams.Button2Click(Sender: TObject);
begin
Edit1.Text:='';
e_button:=false;
i_button:=false;
end;

procedure TFparams.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
Button1.OnClick(Sender);
if key=#27 then
Button2.OnClick(Sender);

end;

procedure TFparams.ToolButton1Click(Sender: TObject);
begin
Edit1.SetFocus;
i_button:=true;
end;

procedure TFparams.ToolButton2Click(Sender: TObject);
begin
Edit1.Text:=DM.ADOparams.FieldByName('naim').AsString;
e_button:=true;
end;

procedure TFparams.ToolButton5Click(Sender: TObject);
begin
Button1.OnClick(Sender);
end;

procedure TFparams.ToolButton6Click(Sender: TObject);
var button_select:Integer;
begin
button_select:=MessageDlg('Удаляем запись '+DM.ADOparams.FieldByName('naim').AsString+'? Вы уверены? Подумайте еще раз...',mtConfirmation,mbOKCancel,0);
 if button_Select = mrOK     then Dm.ADOparams.Delete;
end;

end.
