unit f_order;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, u_dm,
  Vcl.ComCtrls, Vcl.ToolWin;

type
  TForder = class(TForm)
    DBGrid1: TDBGrid;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Forder: TForder;

implementation

{$R *.dfm}

procedure TForder.FormActivate(Sender: TObject);
begin
Dm.ADOQorder.Active:=false;
Dm.ADOQorder.Active:=true;
end;

end.
