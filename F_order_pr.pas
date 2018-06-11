unit F_order_pr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u_dm, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.ExtDlgs, jpeg, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, PNGImage, Data.Win.ADODB,
  Vcl.OleCtnrs, Vcl.ComCtrls, SDL_Thumbnails, IdBaseComponent, IdAntiFreezeBase,
  Vcl.IdAntiFreeze, System.ImageList, Vcl.ImgList, SDL_FolderTree,inifiles;

type
  TForder_pr = class(TForm)
    Image1: TImage;
    procedure DrawGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure FormActivate(Sender: TObject);
    procedure Thumbnails1ImageRequest(Sender: TObject; ThumbID: Integer;
      var HowToProcess: TImageRequestProcessing; var MarkIt: Integer;
      var ImgBuffer: TBitmap);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Forder_pr: TForder_pr;
  pic:array[1..20] of string;
  init:TInifile;
  dir:String;
implementation

{$R *.dfm}

procedure TForder_pr.DrawGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var B,b2:TpngImage;
num:integer;
rec2:Trect;
begin
end;

procedure TForder_pr.FormActivate(Sender: TObject);
begin
{Dm.ADOmaket.First;
Thumbnails1.Max:=Dm.ADOmaket.RecordCount;}
 Init := TInifile.Create(extractfilepath(paramstr(0)) + 'setup.ini');
   dir:=Init.readString('paths', 'dir', extractfilepath(paramstr(0)));
end;

procedure TForder_pr.Thumbnails1ImageRequest(Sender: TObject; ThumbID: Integer;
  var HowToProcess: TImageRequestProcessing; var MarkIt: Integer;
  var ImgBuffer: TBitmap);
begin
  if ThumbId<=Dm.ADOmaket.RecordCount then
  begin
  Dm.ADOmaket.First;
  Dm.adomaket.MoveBy(ThumbID-1);
  Image1.Picture.LoadFromFile(dir+Dm.ADOQorder_pr.FieldByName('path').AsString+'\'+Dm.ADOmaket.FieldByName('pic3').asstring); //загружаем в него файл
  ImgBuffer.Assign(Image1.Picture.Graphic);
  HowToProcess := irpShowSlide;
  end;

end;

end.
