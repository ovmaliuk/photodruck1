unit F_stock;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u_dm, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ToolWin, Vcl.ComCtrls, f_addstock, math;

type
  TFstock = class(TForm)
    ToolBar1: TToolBar;
    DBGrid1: TDBGrid;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    procedure ToolButton1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fstock: TFstock;

implementation

{$R *.dfm}

procedure TFstock.FormActivate(Sender: TObject);
begin
Dm.ADOQstock.Active:=false;
Dm.ADOQstock.Active:=true;
end;

procedure TFstock.ToolButton1Click(Sender: TObject);
begin
Dm.ADOmodels.Active:=false;
Dm.ADOmodels.Active:=true;
Faddstock.Tag:=0;
Faddstock.show;
FaddStock.Caption:='Добавление';
Faddstock.CheckBox2.Visible:=false;
Faddstock.Fraddstock1.Visible:=true;
Faddstock.freditstock1.visible:=false;
end;

procedure TFstock.ToolButton3Click(Sender: TObject);
begin
Faddstock.show;
FaddStock.Caption:='Редактирование';
Faddstock.Edit1.Text:=FloatToStrF(Dm.ADOqStock.FieldByName('cost').Value,ffNumber,8,3);
Faddstock.Edit2.Text:=IntToStr(Dm.ADOqstock.FieldByName('num').Value);
Faddstock.DateTimePicker1.Date:=Dm.ADOqstock.FieldByName('date_buy').Value;
Faddstock.Checkbox2.Checked:=Dm.ADOqstock.FieldByName('arhive').Value;
Faddstock.checkbox1.Checked:=Dm.ADOqstock.FieldByName('reserve').Value;
Faddstock.Tag:=1;
Faddstock.CheckBox2.Visible:=true;
Faddstock.Fraddstock1.Visible:=false;
Faddstock.freditstock1.visible:=true;
end;

procedure TFstock.ToolButton5Click(Sender: TObject);
var button_select:Integer;
begin
button_select:=MessageDlg('Удаляем запись '+DM.ADOQstock.FieldByName('model_name').AsString+'? Вы уверены? Подумайте еще раз...',mtConfirmation,mbOKCancel,0);
 if button_Select = mrOK     then
 begin
   Dm.ADOqstock.Edit;
   Dm.ADOqstock.FieldByName('arhive').Value:=true;
   Dm.ADOqstock.Post;
   Dm.ADOQstock.Active:=false;
   Dm.ADOQstock.Active:=true;
 end;
end;

end.
