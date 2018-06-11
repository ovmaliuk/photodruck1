unit F_addparams;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, u_dm, Data.Bind.Components,
  Data.Bind.DBScope, Vcl.StdCtrls, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Vcl.ComCtrls, Vcl.ToolWin, Data.DB, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, f_chooseparams, f_addvalue;

type
  TFaddparams = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBGrid1: TDBGrid;
    BindSourceDB1: TBindSourceDB;
    BindSourceDB2: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkPropertyToFieldCaption: TLinkPropertyToField;
    LinkPropertyToFieldCaption2: TLinkPropertyToField;
    Label5: TLabel;
    Label6: TLabel;
    LinkPropertyToFieldCaption3: TLinkPropertyToField;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    procedure FormActivate(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Faddparams: TFaddparams;

implementation

{$R *.dfm}

procedure TFaddparams.DBGrid1DblClick(Sender: TObject);
begin
if dm.ADOQparams.RecordCount>0 then
faddvalue.Show;
end;

procedure TFaddparams.FormActivate(Sender: TObject);
begin
  dm.ADOQparams.Active:=false;
  dM.ADOQparams.SQL.Clear;
  dm.ADOQparams.Sql.Add('SELECT articles.id_model, model_param.naim, articles.id_model, articles.id_param, articles.value_pr, model_param.id_param, model_param.naim');
  dm.ADOQparams.Sql.Add('FROM model_param INNER JOIN articles ON model_param.id_param = articles.id_param');
  dm.ADOQparams.Sql.Add('where articles.id_model ='+IntToStr(Dm.AdoQModels.FieldByName('id_model').Value));
  dm.ADOQparams.Active:=true;
end;

procedure TFaddparams.ToolButton1Click(Sender: TObject);
begin
Fchooseparams.Show;
end;

procedure TFaddparams.ToolButton3Click(Sender: TObject);
begin
if dm.ADOQparams.RecordCount>0then
Faddvalue.show;
end;

procedure TFaddparams.ToolButton5Click(Sender: TObject);
begin
  dm.ADOnum.Active:=false;
  dM.ADOnum.SQL.Clear;
  dm.Adonum.Sql.Add('Delete *');
  dm.Adonum.Sql.Add('FROM articles');
  dm.Adonum.Sql.Add('where id_param ='+IntToStr(Dm.AdoQparams.FieldByName('articles.id_param').Value)+' and id_model='+IntToStr(Dm.AdoQModels.FieldByName('id_model').Value));
  dm.ADOnum.ExecSQL;
  Dm.ADOQparams.Active:=false;
  dm.ADOQparams.Active:=true;
end;

end.
