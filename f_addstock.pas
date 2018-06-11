unit f_addstock;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, u_dm, Vcl.ComCtrls, f_models, Fr_addstock,
  Fr_editstock;

type
  TFaddstock = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label4: TLabel;
    DateTimePicker1: TDateTimePicker;
    CheckBox1: TCheckBox;
    Button1: TButton;
    Button2: TButton;
    CheckBox2: TCheckBox;
    Fraddstock1: TFraddstock;
    Freditstock1: TFreditstock;
    checkbox3: TCheckBox;
    procedure currency(sender:Tobject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Faddstock: TFaddstock;
  comma:boolean;
implementation

{$R *.dfm}
procedure Tfaddstock.currency(Sender:Tobject);
var s:string;
  I: Integer;

begin
  comma:=false;
  s:=(Sender as TEdit).Text;
  i:=1;
  while i<=length(s) do
  begin
    if (s[i]=FormatSettings.DecimalSeparator) and not comma then
    begin
      comma:=true;
      i:=i+1;
    end
    else if (s[i]=FormatSettings.DecimalSeparator) and comma then
         Delete(s,i,1)
         else i:=i+1;
  end;
  (Sender as TEdit).Text:=s;
end;

procedure TFaddstock.Button1Click(Sender: TObject);
var button_select:Integer;
begin
currency(Edit1);
if Edit2.Text='' then
showmessage('Поставьте количество')
else
begin
  if faddstock.Tag=0 then
  begin
    dM.ADOnum.SQL.Clear;
    dm.Adonum.Sql.Add('SELECT stock.id_stock');
    dm.Adonum.Sql.Add('FROM stock');
    dm.Adonum.Sql.Add('where id_model='+IntToStr(Dm.ADOQmodels.FieldByName('id_model').Value)+'and arhive=false');
    dm.ADOnum.Active:=true;
    if (Dm.ADOnum.RecordCount>0) then
    begin
      button_select:=MessageDlg('Модель '+DM.ADOQstock.FieldByName('model_name').AsString+' уже есть на складе. Добавить модель с другой ценой?',mtConfirmation,mbOKCancel,0);
    end;
    if (Dm.ADOnum.RecordCount<1) or (button_Select = mrOK) then
     Dm.ADOqstock.Insert
  end
  else
  begin
    Dm.ADOqstock.Edit;
    Dm.ADOqstock.FieldByName('arhive').Value:=checkbox2.Checked;
    end;

  if (Dm.ADOQstock.State=dsEdit) or (Dm.ADOQstock.State=dsInsert) then
  begin
  if Edit1.Text<>'' then
    Dm.ADOqStock.FieldByName('cost').Value:=StrToFloat(Edit1.Text);

    Dm.ADOqstock.FieldByName('date_buy').Value:=DateTimePicker1.Date;
    Dm.ADOqstock.FieldByName('arhive').Value:=checkbox2.checked;
    Dm.ADOqstock.FieldByName('reserve').Value:=checkbox1.Checked;
    if checkbox1.Checked then
    Dm.ADOqstock.FieldByName('num').Value:=0-StrToInt(Edit2.Text)
    else Dm.ADOqstock.FieldByName('num').Value:=StrToInt(Edit2.Text);
    Dm.ADOQstock.fieldByName('client').value:=checkbox3.Checked;
    if FaddStock.Tag=0 then
    Dm.ADOqstock.FieldByName('stock.id_model').Value:=Dm.ADOQmodels.FieldByName('id_model').Value;
    Dm.ADOqstock.Post;
    end;
  Faddstock.Close;
end;
end;

procedure TFaddstock.Button2Click(Sender: TObject);
begin
Faddstock.Close;
end;

procedure TFaddstock.Button3Click(Sender: TObject);
begin
Fmodels.Show;
end;



procedure TFaddstock.Edit1Exit(Sender: TObject);
begin
currency(Sender);
end;

procedure TFaddstock.Edit1KeyPress(Sender: TObject; var Key: Char);
var n: Integer;
    S: String;
begin
with (Sender as TEdit) do
  begin
    if not ((key) in ['0'..'9',FormatSettings.DecimalSeparator, char(8)]) then
    begin
      key:=#0;
    end;
  end;
end;

procedure TFaddstock.Edit1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var n: Integer;
    S: String;
begin
{with (Sender as TEdit) do
  begin
    if (char(key) in ['a'..'z','A'..'Z','а'..'я','А'..'Я','.']) or (comma and (char(key)=FormatSettings.DecimalSeparator)) then
    begin
      beep;
      s:=Edit1.Text;
      Delete(s,length(s),1);
      Edit1.Text:=s;
      Edit1.SelStart:=length(s)+1;
    end
    else if (key)=ord(FormatSettings.DecimalSeparator) then
         begin
          comma:=true;
          if length(Edit1.Text)=1 then
          Edit1.Text:='0'+Edit1.Text;
          Edit1.SelStart:=length(Edit1.Text)+1
         end
  end;}
end;

procedure TFaddstock.FormActivate(Sender: TObject);
begin
comma:=false;
if Faddstock.Tag=0 then
begin
  Dm.ADOQmodels.Active:=false;
  Dm.ADOQmodels.Active:=true;
  Edit1.Text:='';
  Edit2.Text:='';
  DateTimepicker1.Date:=Now;
  checkbox1.Checked:=false;
  checkbox2.Checked:=false;
end;
end;

end.
