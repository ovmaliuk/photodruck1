program Photodruck;

uses
  Vcl.Forms,
  Main in 'Main.pas' {Fmain},
  U_dm in 'U_dm.pas' {DM: TDataModule},
  F_params in 'F_params.pas' {Fparams},
  F_product in 'F_product.pas' {Fproduct},
  F_models in 'F_models.pas' {Fmodels},
  Fr_choosepr in 'Fr_choosepr.pas' {Frchoosepr: TFrame},
  f_addModel in 'f_addModel.pas' {Faddmodel},
  Fr_next2 in 'Fr_next2.pas' {Frnext2: TFrame},
  F_addparams in 'F_addparams.pas' {Faddparams},
  f_chooseparams in 'f_chooseparams.pas' {Fchooseparams},
  F_addvalue in 'F_addvalue.pas' {Faddvalue},
  F_stock in 'F_stock.pas' {Fstock},
  f_addstock in 'f_addstock.pas' {Faddstock},
  Fr_addstock in 'Fr_addstock.pas' {Fraddstock: TFrame},
  Fr_editstock in 'Fr_editstock.pas' {Freditstock: TFrame},
  F_client in 'F_client.pas' {Fclient},
  f_addclient in 'f_addclient.pas' {Faddclient},
  f_order in '..\..\..\август\fonts\project\f_order.pas' {Forder},
  f_addorder in 'f_addorder.pas' {Faddorder},
  Fr_neworder in 'Fr_neworder.pas' {Frneworder: TFrame},
  F_order_pr in 'F_order_pr.pas' {Forder_pr},
  F_settings in 'F_settings.pas' {Fsettings},
  f_addorder_pr in 'f_addorder_pr.pas' {Faddorder_pr};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
   Application.CreateForm(TDM, DM);
  Application.CreateForm(TFmain, Fmain);
  Application.CreateForm(TFparams, Fparams);
  Application.CreateForm(TFproduct, Fproduct);
  Application.CreateForm(TFmodels, Fmodels);
  Application.CreateForm(TFaddmodel, Faddmodel);
  Application.CreateForm(TFaddparams, Faddparams);
  Application.CreateForm(TFchooseparams, Fchooseparams);
  Application.CreateForm(TFaddvalue, Faddvalue);
  Application.CreateForm(TFstock, Fstock);
  Application.CreateForm(TFaddstock, Faddstock);
  Application.CreateForm(TFclient, Fclient);
  Application.CreateForm(TFaddclient, Faddclient);
  Application.CreateForm(TForder, Forder);
  Application.CreateForm(TFaddorder, Faddorder);
  Application.CreateForm(TForder_pr, Forder_pr);
  Application.CreateForm(TFsettings, Fsettings);
  Application.CreateForm(TFaddorder_pr, Faddorder_pr);
  Application.Run;
end.
