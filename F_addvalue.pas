unit F_addvalue;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u_dm, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Data.Bind.Components, Vcl.StdCtrls, Data.Bind.DBScope;

type
  TFaddvalue = class(TForm)
    Label1: TLabel;
    BindSourceDB2: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkPropertyToFieldCaption: TLinkPropertyToField;
    Edit1: TEdit;
    LinkControlToField1: TLinkControlToField;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Faddvalue: TFaddvalue;

implementation

{$R *.dfm}

procedure TFaddvalue.Button1Click(Sender: TObject);
var i:integer;
ss:string;
begin
  dm.ADOQparams.Edit;
  dm.ADOQparams.FieldByName('value_pr').AsString:=Edit1.Text;
  dm.ADOQparams.Post;
  ss:='';
  dm.ADOQparams.First;
  for i:=1 to dm.ADOQparams.recordCount do
  begin
    if dm.ADOQparams.FieldByName('value_pr').AsString<>'' then
    begin
      ss:=ss+dm.ADOQparams.FieldByName('value_pr').AsString+' ';
    end;
    dm.ADOQparams.Next;
  end;
  dm.ADOQmodels.Edit;
  dm.ADOQmodels.FieldByName('full_name').AsString:=ss;
  dm.ADOQmodels.Post;
  Faddvalue.Close;
end;

procedure TFaddvalue.Button2Click(Sender: TObject);
begin
Faddvalue.Close;
end;

procedure TFaddvalue.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
button1.OnClick(sender);
if key=#27 then
button2.OnClick(sender);
end;

procedure TFaddvalue.FormActivate(Sender: TObject);
begin
Edit1.SetFocus;
end;

end.
