unit F_models;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.Grids, Vcl.DBGrids, u_dm, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.DBCGrids, f_addmodel, f_addparams, f_chooseparams,
  Vcl.ExtCtrls;

type
  TFmodels = class(TForm)
    DBGrid1: TDBGrid;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    procedure FormShow(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fmodels: TFmodels;

implementation

{$R *.dfm}

procedure TFmodels.FormActivate(Sender: TObject);
begin
 Dm.ADOQmodels.Active:=false;
Dm.ADOQmodels.Active:=true;
end;

procedure TFmodels.FormShow(Sender: TObject);
begin
Dm.ADOQmodels.Active:=false;
Dm.ADOQmodels.Active:=true;
//dm.AdoQparams.ExecSQL;

end;

procedure TFmodels.ToolButton1Click(Sender: TObject);
var num:Integer;
begin
 faddmodel.Show;
 faddmodel.Caption:='Добавление модели';
 faddmodel.Frchoosepr1.Visible:=true;
 faddmodel.Frnext21.Visible:=false;
 Faddmodel.Button1.Caption:='Далее>>>'
end;

procedure TFmodels.ToolButton3Click(Sender: TObject);
var button_select:Integer;
begin
 dM.ADOnum.SQL.Clear;
 dm.Adonum.Sql.Add('SELECT id_model');
 dm.Adonum.Sql.Add('FROM stock');
 dm.Adonum.Sql.Add('where id_model='+IntToStr(Dm.ADOqmodels.FieldByName('id_model').Value));
 dm.ADOnum.Active:=true;
 if dm.ADOnum.RecordCount>0 then
 showmessage('Модель находиться на складе. Ее нельзя удалить')
 else
 begin
  button_select:=MessageDlg('Удаляем запись '+DM.ADOqmodels.FieldByName('model_name').AsString+'? Вы уверены? Подумайте еще раз...',mtConfirmation,mbOKCancel,0);
  if button_Select = mrOK then
  begin
   dm.ADOnum.Active:=false;
   dM.ADOnum.SQL.Clear;
   dm.Adonum.Sql.Add('Delete *');
   dm.Adonum.Sql.Add('FROM articles');
   dm.Adonum.Sql.Add('where id_model ='+IntToStr(Dm.ADOQmodels.FieldByName('id_model').Value));
   dm.ADOnum.ExecSQL;

   dm.ADOnum.Active:=false;
   dM.ADOnum.SQL.Clear;
   dm.Adonum.Sql.Add('Delete *');
   dm.Adonum.Sql.Add('FROM models');
   dm.Adonum.Sql.Add('where id_model ='+IntToStr(Dm.ADOQmodels.FieldByName('id_model').Value));
   dm.ADOnum.ExecSQL;

   dm.ADOQmodels.Active:=false;
   dm.ADOQmodels.Active:=true;
  end;
 end;
end;

procedure TFmodels.ToolButton5Click(Sender: TObject);
begin
 dm.ADOnum.Active:=false;
 dM.ADOnum.SQL.Clear;
 dm.Adonum.Sql.Add('Delete *');
 dm.Adonum.Sql.Add('FROM articles');
 dm.Adonum.Sql.Add('where id_model ='+IntToStr(Dm.ADOQmodels.FieldByName('id_model').Value));
 dm.ADOnum.ExecSQL;

 dm.ADOnum.Active:=false;
 dM.ADOnum.SQL.Clear;
 dm.Adonum.Sql.Add('Delete *');
 dm.Adonum.Sql.Add('FROM models');
 dm.Adonum.Sql.Add('where id_model ='+IntToStr(Dm.ADOQmodels.FieldByName('id_model').Value));
 dm.ADOnum.ExecSQL;

 dm.ADOQmodels.Active:=false;
 dm.ADOQmodels.Active:=true;
end;

procedure TFmodels.ToolButton7Click(Sender: TObject);
begin
Faddparams.show;
end;

end.
