object Faddorder_pr: TFaddorder_pr
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077
  ClientHeight = 461
  ClientWidth = 738
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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 29
    Width = 738
    Height = 212
    Align = alTop
    Ctl3D = False
    DataSource = DM.DQstock
    DrawingStyle = gdsClassic
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentCtl3D = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'model_name'
        Title.Caption = #1052#1086#1076#1077#1083#1100
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Full_name'
        Title.Caption = #1054#1087#1080#1089#1072#1085#1080#1077
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'name_pr'
        Title.Caption = #1047#1072#1075#1086#1090#1086#1074#1082#1072
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'num'
        Title.Caption = #1050#1086#1083'-'#1074#1086
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'reserve'
        Title.Caption = #1056#1077#1079#1077#1088#1074
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'client'
        Title.Caption = #1052#1072#1081#1082#1072' '#1082#1083#1080#1077#1085#1090#1072
        Visible = True
      end>
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 738
    Height = 29
    ButtonHeight = 25
    Caption = 'ToolBar1'
    Images = DM.ImageList1
    TabOrder = 1
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Caption = 'ToolButton1'
      ImageIndex = 0
      OnClick = ToolButton1Click
    end
    object ToolButton2: TToolButton
      Left = 23
      Top = 0
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 1
      Style = tbsSeparator
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 241
    Width = 738
    Height = 160
    Align = alTop
    BevelOuter = bvSpace
    BorderStyle = bsSingle
    TabOrder = 2
    object Label1: TLabel
      Left = 21
      Top = 16
      Width = 86
      Height = 19
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
    end
    object Label2: TLabel
      Left = 21
      Top = 88
      Width = 46
      Height = 19
      Caption = #1057#1091#1084#1084#1072
    end
    object Edit1: TEdit
      Left = 21
      Top = 41
      Width = 121
      Height = 27
      NumbersOnly = True
      TabOrder = 0
    end
    object CheckBox1: TCheckBox
      Left = 181
      Top = 45
      Width = 97
      Height = 17
      Caption = #1043#1086#1090#1086#1074#1086
      TabOrder = 1
    end
    object Edit2: TEdit
      Left = 21
      Top = 113
      Width = 121
      Height = 27
      TabOrder = 2
      OnExit = Edit2Exit
      OnKeyPress = Edit2KeyPress
    end
  end
  object Button1: TButton
    Left = 512
    Top = 428
    Width = 89
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 639
    Top = 428
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 4
    OnClick = Button2Click
  end
end
