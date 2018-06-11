unit Fr_addstock;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, u_dm, f_models;

type
  TFraddstock = class(TFrame)
    Panel1: TPanel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    Button3: TButton;
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TFraddstock.Button3Click(Sender: TObject);
begin
Fmodels.show;
end;

end.
