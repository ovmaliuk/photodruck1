object Faddorder: TFaddorder
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Faddorder'
  ClientHeight = 441
  ClientWidth = 732
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
  object Bevel1: TBevel
    Left = 0
    Top = 241
    Width = 732
    Height = 200
    Align = alClient
    ExplicitLeft = 8
    ExplicitTop = 246
    ExplicitHeight = 175
  end
  object Label1: TLabel
    Left = 16
    Top = 256
    Width = 86
    Height = 19
    Caption = #1044#1072#1090#1072' '#1079#1072#1082#1072#1079#1072
  end
  object Label2: TLabel
    Left = 16
    Top = 329
    Width = 36
    Height = 19
    Caption = #1057#1088#1086#1082
  end
  object Label3: TLabel
    Left = 224
    Top = 256
    Width = 90
    Height = 19
    Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 732
    Height = 241
    Align = alTop
    TabOrder = 0
    inline Frneworder1: TFrneworder
      Left = 1
      Top = 3
      Width = 730
      Height = 237
      Align = alBottom
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ExplicitLeft = 1
      ExplicitTop = 3
      ExplicitWidth = 730
      inherited DBGrid1: TDBGrid
        Width = 730
      end
      inherited ToolBar1: TToolBar
        Width = 730
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 730
      end
    end
  end
  object DateTimePicker1: TDateTimePicker
    Left = 16
    Top = 281
    Width = 186
    Height = 27
    Date = 43242.635953101860000000
    Time = 43242.635953101860000000
    TabOrder = 1
  end
  object DateTimePicker2: TDateTimePicker
    Left = 16
    Top = 357
    Width = 186
    Height = 27
    Date = 43242.638296331010000000
    Time = 43242.638296331010000000
    ShowCheckbox = True
    TabOrder = 2
  end
  object Memo1: TMemo
    Left = 224
    Top = 281
    Width = 281
    Height = 103
    Lines.Strings = (
      'Memo1')
    TabOrder = 3
  end
  object CheckBox1: TCheckBox
    Left = 528
    Top = 320
    Width = 97
    Height = 17
    Caption = #1054#1087#1083#1072#1095#1077#1085
    TabOrder = 4
  end
  object CheckBox2: TCheckBox
    Left = 528
    Top = 360
    Width = 97
    Height = 17
    Caption = #1042' '#1072#1088#1093#1080#1074
    TabOrder = 5
  end
  object Button1: TButton
    Left = 528
    Top = 408
    Width = 97
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 6
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 649
    Top = 408
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 7
    OnClick = Button2Click
  end
end
