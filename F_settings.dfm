object Fsettings: TFsettings
  Left = 0
  Top = 0
  ActiveControl = Button1
  BorderStyle = bsDialog
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
  ClientHeight = 270
  ClientWidth = 651
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 19
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 651
    Height = 105
    Align = alTop
    Caption = ' '#1056#1072#1089#1087#1086#1083#1086#1078#1077#1085#1080#1077' '#1087#1072#1087#1082#1080' '#1079#1072#1082#1072#1079#1086#1074' '
    TabOrder = 0
    object Label1: TLabel
      Left = 19
      Top = 32
      Width = 5
      Height = 19
    end
    object Button4: TButton
      Left = 19
      Top = 72
      Width = 100
      Height = 25
      Caption = #1074#1099#1073#1077#1088#1080#1090#1077'...'
      TabOrder = 0
      OnClick = Button4Click
    end
  end
  object Button1: TButton
    Left = 427
    Top = 236
    Width = 97
    Height = 25
    Align = alCustom
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 551
    Top = 236
    Width = 92
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 2
    OnClick = Button2Click
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 105
    Width = 651
    Height = 125
    Align = alTop
    Caption = #1060#1072#1081#1083' '#1041#1044' '
    TabOrder = 3
    object Edit1: TEdit
      Left = 19
      Top = 31
      Width = 622
      Height = 27
      TabOrder = 0
    end
    object Button3: TButton
      Left = 19
      Top = 72
      Width = 100
      Height = 25
      Caption = #1074#1099#1073#1077#1088#1080#1090#1077'...'
      TabOrder = 1
      OnClick = Button3Click
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 144
    Top = 124
  end
end
