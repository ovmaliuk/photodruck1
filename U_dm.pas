unit U_dm;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB, System.ImageList,
  Vcl.ImgList, Vcl.Controls, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP, IdServerIOHandler, IdSSL, IdSSLOpenSSL, IdIOHandler,
  IdIOHandlerSocket, IdIOHandlerStack, Inifiles, Winapi.Messages,  Winapi.Windows,  System.Variants, Vcl.Graphics, Vcl.Forms, Vcl.Dialogs;

type
  TDM = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOpr: TADOTable;
    ADOparams: TADOTable;
    ADOmodels: TADOTable;
    Dpr: TDataSource;
    Dparams: TDataSource;
    Dmodels: TDataSource;
    Darticles: TDataSource;
    ADOarticles: TADOTable;
    ImageList1: TImageList;
    ADOnum: TADOQuery;
    ADOQmodels: TADOQuery;
    DqModels: TDataSource;
    ADOQparams: TADOQuery;
    DQparams: TDataSource;
    ADOQparamsid_model: TIntegerField;
    ADOQparamsarticlesid_param: TIntegerField;
    ADOQparamsvalue_pr: TWideStringField;
    ADOQparamsmodel_paramid_param: TAutoIncField;
    ADOQparamsnaim: TWideStringField;
    ADOQstock: TADOQuery;
    DQstock: TDataSource;
    Dstock: TDataSource;
    ADOstock: TADOTable;
    ADOQstockmodelsID_model: TAutoIncField;
    ADOQstockid_pr: TIntegerField;
    ADOQstockmodel_name: TWideStringField;
    ADOQstockFull_name: TWideStringField;
    ADOQstockid_stock: TAutoIncField;
    ADOQstockstockID_model: TIntegerField;
    ADOQstockcost: TFloatField;
    ADOQstocknum: TIntegerField;
    ADOQstockreserve: TBooleanField;
    ADOQstockarhive: TBooleanField;
    ADOQstockdate_buy: TDateTimeField;
    ADOQstockname_pr: TWideStringField;
    ADOQstockshort_name: TWideStringField;
    ADOstockid_stock: TAutoIncField;
    ADOstockID_model: TIntegerField;
    ADOstockcost: TFloatField;
    ADOstocknum: TIntegerField;
    ADOstockreserve: TBooleanField;
    ADOstockarhive: TBooleanField;
    ADOstockdate_buy: TDateTimeField;
    ADOprid_pr: TAutoIncField;
    ADOprname_pr: TWideStringField;
    ADOprshort_name: TWideStringField;
    ADOprinstruction: TWideMemoField;
    ADOQmodelsid_model: TAutoIncField;
    ADOQmodelsmodelsid_pr: TIntegerField;
    ADOQmodelsmodel_name: TWideStringField;
    ADOQmodelsFull_name: TWideStringField;
    ADOQmodelsproductid_pr: TAutoIncField;
    ADOQmodelsname_pr: TWideStringField;
    ADOQmodelsshort_name: TWideStringField;
    ADOQmodelsinstruction: TWideMemoField;
    Dclient: TDataSource;
    ADOclient: TADOTable;
    ADOclientId_client: TAutoIncField;
    ADOclientFIO: TWideStringField;
    ADOclientsource: TWideStringField;
    ADOclienttel: TWideStringField;
    ADOclientadress: TWideMemoField;
    IdHTTP1: TIdHTTP;
    ADOcliente_mail: TWideStringField;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    ADOQorder: TADOQuery;
    DQorder: TDataSource;
    ADOQorderId: TAutoIncField;
    ADOQorderorderId_client: TIntegerField;
    ADOQorderdate_order: TDateTimeField;
    ADOQorderdate_term: TDateTimeField;
    ADOQorderSumma: TIntegerField;
    ADOQorderpayment: TBooleanField;
    ADOQordercancel: TBooleanField;
    ADOQordernote: TWideMemoField;
    ADOQorderclientId_client: TAutoIncField;
    ADOQorderFIO: TWideStringField;
    ADOQordersource: TWideStringField;
    ADOQordertel: TWideStringField;
    ADOQorderadress: TWideMemoField;
    ADOQordere_mail: TWideStringField;
    ADOQclient: TADOQuery;
    Dqclient: TDataSource;
    ADOQstockclient: TBooleanField;
    ADOorder_pr: TADOTable;
    ADOorder_prid: TAutoIncField;
    ADOorder_prid_order: TIntegerField;
    ADOorder_prmodel: TIntegerField;
    ADOorder_prvalue_pr: TIntegerField;
    ADOorder_prready: TBooleanField;
    Dorder_pr: TDataSource;
    ADOmaket: TADOTable;
    Dmaket: TDataSource;
    ADOmaketID: TAutoIncField;
    ADOmaketid_pr: TIntegerField;
    ADOmaketpic3: TWideStringField;
    ADOclientwork_dir: TWideStringField;
    ADOQclientId_client: TAutoIncField;
    ADOQclientFIO: TWideStringField;
    ADOQclienttel: TWideStringField;
    ADOQcliente_mail: TWideStringField;
    ADOQclientwork_dir: TWideStringField;
    ADOQorderready_maket: TBooleanField;
    ADOQorder_pr: TADOQuery;
    Dqorder_pr: TDataSource;
    ADOQorder_prmodel_name: TWideStringField;
    ADOQorder_prFull_name: TWideStringField;
    ADOQorder_prname_pr: TWideStringField;
    ADOQorder_prnum: TIntegerField;
    ADOQorder_prreserve: TBooleanField;
    ADOQorder_prready: TBooleanField;
    ADOQorder_prvalue_pr: TIntegerField;
    ADOQorder_prid_order: TIntegerField;
    ADOQorder_prid: TAutoIncField;
    ADOQorder_prmodel: TIntegerField;
    ADOorder_prcost: TFloatField;
    ADOQorder_prcost: TFloatField;
    ADOQorderwork_dir: TWideStringField;
    ADOQorder_prpath: TWideStringField;
    ADOmaketFileExt: TWideStringField;
    Dqmaket: TDataSource;
    procedure init_bd;
    procedure DataModuleCreate(Sender: TObject);
    procedure ADOQmodelsAfterPost(DataSet: TDataSet);
    procedure ADOclientadressGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ADOprinstructionGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ADOQordernoteGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}
procedure TDm.init_bd;
var Init:TInifile;
path:string;
begin
  Init := TInifile.Create(extractfilepath(paramstr(0)) + 'setup.ini');
  path:=Init.ReadString('paths','bd','photodruck_request.accdb');
  AdoConnection1.Connected:=false;
  AdoConnection1.ConnectionString:=WideString('Provider=Microsoft.ACE.OLEDB.15.0;Data Source='+path+';Persist Security Info=False');
  AdoConnection1.Connected:=true;
  Adopr.Active:=true;
  Adoparams.Active:=true;
  Adomodels.Active:=true;
  Adoarticles.Active:=true;
  Adostock.Active:=true;
  Adoclient.Active:=true;
  Adoorder_pr.Active:=true;
  Adomaket.Active:=true;
  Adoqorder.Active:=true;
  Adomaket.Active:=true;
end;
procedure TDM.ADOclientadressGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
Text := Copy(Adoclientadress.AsString, 1, 300);
end;

procedure TDM.ADOprinstructionGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
Text := Copy(ADOprinstruction.AsString, 1, 300);
end;

procedure TDM.ADOQmodelsAfterPost(DataSet: TDataSet);
begin
  Dm.ADOmodels.Active:=false;
  Dm.ADOmodels.Active:=true;
end;

procedure TDM.ADOQordernoteGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
Text := Copy(ADOQordernote.AsString, 1, 250);
end;

procedure TDM.DataModuleCreate(Sender: TObject);
var Init:TInifile;
path:string;
begin
  AdoConnection1.Connected:=false;
end;

end.
