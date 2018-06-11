unit f_addModel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, u_dm, f_product,
  Fr_choosepr, Fr_next2;
type
  TFaddmodel = class(TForm)
    Frchoosepr1: TFrchoosepr;
    Button1: TButton;
    Frnext21: TFrnext2;
    procedure FormPaint(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Frchoosepr1ListBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Faddmodel: TFaddmodel;
  short_name:string;
implementation
uses F_models;
{$R *.dfm}

procedure TFaddmodel.Button1Click(Sender: TObject);
var num:integer;
begin
if Button1.Caption<>'Сохранить' then
begin
  Dm.ADOmodels.Last;
  if dm.ADOmodels.RecordCount>0 then
  num:=dm.ADOmodels.fieldByName('id_model').Value+1
  else
  num:=1;
  Frchoosepr1.Visible:=false;
  Frnext21.visible:=true;
  dM.ADOnum.SQL.Clear;
  dm.Adonum.Sql.Add('SELECT product.short_name');
  dm.Adonum.Sql.Add('FROM product');
  dm.Adonum.Sql.Add('where name_pr ='+#39 +Frchoosepr1.ListBox1.Items[Frchoosepr1.ListBox1.ItemIndex]+#39);
  dm.ADOnum.Active:=true;
  short_name:=dm.ADOnum.FieldByName('short_name').AsString;
  Frnext21.Edit1.Text:=dm.ADOnum.FieldByName('short_name').AsString+IntToStr(num);
  //Frnext21.Edit2.text:=Frchoosepr1.ListBox1.Items[Frchoosepr1.ListBox1.ItemIndex];
  Button1.Caption:='Сохранить';
end
else
begin
  dM.ADOnum.SQL.Clear;
  dm.Adonum.Sql.Add('SELECT product.id_pr');
  dm.Adonum.Sql.Add('FROM product');
  dm.Adonum.Sql.Add('where short_name ='+#39 +short_name+#39);
  dm.ADOnum.Active:=true;
  Dm.Adomodels.Insert;
    Dm.ADOmodels.FieldByName('id_pr').Value:=dm.ADOnum.FieldByName('id_pr').value;
    Dm.Adomodels.FieldByName('model_name').Value:=Frnext21.Edit1.text;
    Dm.ADOmodels.FieldByName('full_name').AsString:=Frnext21.Edit2.text;
  DM.ADOmodels.Post;
  FModels.Show;
  Faddmodel.Close;
end;
end;

procedure TFaddmodel.FormPaint(Sender: TObject);
var i:integer;
begin
for i := 0 to Frchoosepr1.ListBox1.Items.Count-1 do
Frchoosepr1.ListBox1.Items.Delete(0);
Dm.ADOpr.First;
for I := 1 to dm.ADOpr.RecordCount do
begin
Frchoosepr1.ListBox1.Items.Add(Dm.ADOpr.FieldByName('name_pr').asstring);
Dm.ADOpr.Next;
end;
end;

procedure TFaddmodel.Frchoosepr1ListBox1Click(Sender: TObject);
begin
Button1.Enabled:=true;
end;

end.
