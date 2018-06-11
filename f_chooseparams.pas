unit f_chooseparams;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes,
  Vcl.Graphics, Vcl.Forms, Vcl.Dialogs, Vcl.Controls, Vcl.StdCtrls, Vcl.Buttons, u_dm,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, Vcl.ComCtrls,
  Vcl.ToolWin, f_params;

type
  TFchooseparams = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    SrcList: TListBox;
    DstList: TListBox;
    SrcLabel: TLabel;
    DstLabel: TLabel;
    IncludeBtn: TSpeedButton;
    IncAllBtn: TSpeedButton;
    ExcludeBtn: TSpeedButton;
    ExAllBtn: TSpeedButton;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    procedure IncludeBtnClick(Sender: TObject);
    procedure ExcludeBtnClick(Sender: TObject);
    procedure IncAllBtnClick(Sender: TObject);
    procedure ExcAllBtnClick(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure MoveSelected(List: TCustomListBox; Items: TStrings);
    procedure SetItem(List: TListBox; Index: Integer);
    function GetFirstSelection(List: TCustomListBox): Integer;
    procedure SetButtons;
  end;

var
  Fchooseparams: TFchooseparams;

implementation

{$R *.dfm}

uses F_addparams;

procedure TFchooseparams.IncludeBtnClick(Sender: TObject);
var
  Index: Integer;
begin
  Index := GetFirstSelection(SrcList);
  MoveSelected(SrcList, DstList.Items);
  SetItem(SrcList, Index);
end;

procedure TFchooseparams.ExcludeBtnClick(Sender: TObject);
var
  Index: Integer;
begin
  Index := GetFirstSelection(DstList);
  MoveSelected(DstList, SrcList.Items);
  SetItem(DstList, Index);
end;

procedure TFchooseparams.FormActivate(Sender: TObject);
var i:integer;
begin
for i := 0 to SrcList.Items.Count-1 do
SrcList.Items.Delete(0);
for i := 0 to DstList.Items.Count-1 do
DstList.Items.Delete(0);

Dm.ADOparams.First;
for I := 1 to dm.ADOparams.RecordCount do
begin
SrcList.Items.Add(Dm.ADOparams.FieldByName('naim').asstring);
Dm.ADOparams.Next;
end;
end;

procedure TFchooseparams.IncAllBtnClick(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to SrcList.Items.Count - 1 do
    DstList.Items.AddObject(SrcList.Items[I], 
      SrcList.Items.Objects[I]);
  SrcList.Items.Clear;
  SetItem(SrcList, 0);
end;

procedure TFchooseparams.CancelBtnClick(Sender: TObject);
begin
Fchooseparams.Close;
end;

procedure TFchooseparams.ExcAllBtnClick(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to DstList.Items.Count - 1 do
    SrcList.Items.AddObject(DstList.Items[I], DstList.Items.Objects[I]);
  DstList.Items.Clear;
  SetItem(DstList, 0);
end;

procedure TFchooseparams.MoveSelected(List: TCustomListBox; Items: TStrings);
var
  I: Integer;
begin
  for I := List.Items.Count - 1 downto 0 do
    if List.Selected[I] then
    begin
      Items.AddObject(List.Items[I], List.Items.Objects[I]);
      List.Items.Delete(I);
    end;
end;

procedure TFchooseparams.OKBtnClick(Sender: TObject);
var
  I, params: Integer;
begin
for I := 0 to DstList.Items.Count-1 do
begin
  dm.ADOnum.Active:=false;
  dM.ADOnum.SQL.Clear;
  dm.Adonum.Sql.Add('SELECT id_param, model_param.naim');
  dm.Adonum.Sql.Add('FROM model_param');
  dm.Adonum.Sql.Add('where naim ='+#39 +DstList.Items[i]+#39);
  dm.ADOnum.Active:=true;
  params:=Dm.AdoNum.fieldByName('id_param').Value;
  dm.ADOnum.Active:=false;
  dM.ADOnum.SQL.Clear;
  dm.Adonum.Sql.Add('SELECT id_param, id_model');
  dm.Adonum.Sql.Add('FROM articles');
  dm.Adonum.Sql.Add('where id_param ='+IntToStr(params)+' and id_model='+IntToStr(Dm.AdoQModels.FieldByName('id_model').Value));
  dm.ADOnum.Active:=true;

  if Dm.ADOnum.RecordCount=0 then
  begin
    Dm.ADOarticles.Insert;
    Dm.ADOarticles.FieldByName('id_model').Value:=Dm.AdoQModels.FieldByName('id_model').Value;
    Dm.ADOarticles.fieldByName('id_param').Value:=params;
    Dm.ADOarticles.Post;
  end;
end;
  Faddparams.Show;
  Fchooseparams.Close;
end;

procedure TFchooseparams.SetButtons;
var
  SrcEmpty, DstEmpty: Boolean;
begin
  SrcEmpty := SrcList.Items.Count = 0;
  DstEmpty := DstList.Items.Count = 0;
  IncludeBtn.Enabled := not SrcEmpty;
  IncAllBtn.Enabled := not SrcEmpty;
  ExcludeBtn.Enabled := not DstEmpty;
  ExAllBtn.Enabled := not DstEmpty;
end;

function TFchooseparams.GetFirstSelection(List: TCustomListBox): Integer;
begin
  for Result := 0 to List.Items.Count - 1 do
    if List.Selected[Result] then Exit;
  Result := LB_ERR;
end;

procedure TFchooseparams.SetItem(List: TListBox; Index: Integer);
var
  MaxIndex: Integer;
begin
  with List do
  begin
    SetFocus;
    MaxIndex := List.Items.Count - 1;
    if Index = LB_ERR then Index := 0
    else if Index > MaxIndex then Index := MaxIndex;
    Selected[Index] := True;
  end;
  SetButtons;
end;

procedure TFchooseparams.ToolButton1Click(Sender: TObject);
begin
Fparams.Show;
end;

procedure TFchooseparams.ToolButton3Click(Sender: TObject);
begin
fparams.Show;
end;

end.
