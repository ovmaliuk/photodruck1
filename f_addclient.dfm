object Faddclient: TFaddclient
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1082#1083#1080#1077#1085#1090#1072
  ClientHeight = 322
  ClientWidth = 705
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 19
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 705
    Height = 273
    Align = alTop
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 35
      Height = 19
      Caption = #1060#1048#1054
    end
    object Label4: TLabel
      Left = 24
      Top = 80
      Width = 70
      Height = 19
      Caption = #1048#1089#1090#1086#1095#1085#1080#1082
    end
    object Label5: TLabel
      Left = 24
      Top = 143
      Width = 65
      Height = 19
      Caption = #1058#1077#1083#1077#1092#1086#1085
    end
    object Label2: TLabel
      Left = 24
      Top = 208
      Width = 44
      Height = 19
      Caption = 'e-mail'
    end
    object Label3: TLabel
      Left = 416
      Top = 16
      Width = 44
      Height = 19
      Caption = #1040#1076#1088#1077#1089
    end
    object Edit1: TEdit
      Left = 24
      Top = 41
      Width = 273
      Height = 25
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 24
      Top = 105
      Width = 273
      Height = 25
      TabOrder = 1
    end
    object Memo1: TMemo
      Left = 416
      Top = 41
      Width = 257
      Height = 217
      Lines.Strings = (
        'Memo1')
      TabOrder = 4
    end
    object MaskEdit1: TMaskEdit
      Left = 24
      Top = 168
      Width = 271
      Height = 25
      EditMask = '!\+375(00\)000-00-00;1;_'
      MaxLength = 17
      TabOrder = 2
      Text = '+375(  )   -  -  '
    end
    object Edit4: TEdit
      Left = 24
      Top = 233
      Width = 271
      Height = 25
      TabOrder = 3
    end
    object Button3: TButton
      Left = 320
      Top = 105
      Width = 75
      Height = 25
      Caption = #1055#1077#1088#1077#1081#1090#1080
      TabOrder = 5
      OnClick = Button3Click
    end
  end
  object Button1: TButton
    Left = 486
    Top = 289
    Width = 97
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 614
    Top = 288
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 2
    OnClick = Button2Click
  end
end
