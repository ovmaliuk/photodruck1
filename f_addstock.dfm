object Faddstock: TFaddstock
  Left = 0
  Top = 0
  BorderIcons = [biMinimize, biMaximize]
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077
  ClientHeight = 346
  ClientWidth = 835
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
  object Label2: TLabel
    Left = 8
    Top = 252
    Width = 84
    Height = 19
    Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100':'
  end
  object Label3: TLabel
    Left = 8
    Top = 285
    Width = 92
    Height = 19
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086':'
  end
  object Label4: TLabel
    Left = 8
    Top = 318
    Width = 106
    Height = 19
    Caption = #1044#1072#1090#1072' '#1087#1086#1082#1091#1087#1082#1080':'
  end
  object Edit1: TEdit
    Left = 130
    Top = 244
    Width = 167
    Height = 27
    TabOrder = 0
    OnExit = Edit1Exit
    OnKeyPress = Edit1KeyPress
    OnKeyUp = Edit1KeyUp
  end
  object Edit2: TEdit
    Left = 130
    Top = 277
    Width = 167
    Height = 27
    NumbersOnly = True
    TabOrder = 1
  end
  object DateTimePicker1: TDateTimePicker
    Left = 130
    Top = 310
    Width = 167
    Height = 27
    Date = 43227.624224328700000000
    Time = 43227.624224328700000000
    TabOrder = 2
  end
  object CheckBox1: TCheckBox
    Left = 352
    Top = 249
    Width = 97
    Height = 17
    Caption = #1056#1077#1079#1077#1088#1074
    TabOrder = 3
  end
  object Button1: TButton
    Left = 584
    Top = 313
    Width = 99
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 718
    Top = 315
    Width = 107
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 5
    OnClick = Button2Click
  end
  object CheckBox2: TCheckBox
    Left = 488
    Top = 249
    Width = 97
    Height = 17
    Caption = #1040#1088#1093#1080#1074
    TabOrder = 6
    Visible = False
  end
  inline Fraddstock1: TFraddstock
    Left = 7
    Top = 8
    Width = 826
    Height = 230
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    ExplicitLeft = 7
    ExplicitTop = 8
  end
  inline Freditstock1: TFreditstock
    Left = 7
    Top = 0
    Width = 826
    Height = 230
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    ExplicitLeft = 7
  end
  object checkbox3: TCheckBox
    Left = 352
    Top = 317
    Width = 145
    Height = 17
    Caption = #1052#1072#1081#1082#1072' '#1079#1072#1082#1072#1079#1095#1080#1082#1072
    TabOrder = 9
  end
end
