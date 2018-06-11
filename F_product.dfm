object Fproduct: TFproduct
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = #1047#1072#1075#1086#1090#1086#1074#1082#1080
  ClientHeight = 497
  ClientWidth = 795
  Color = clWindow
  Ctl3D = False
  DragKind = dkDock
  DragMode = dmAutomatic
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 19
  object Label1: TLabel
    Left = 16
    Top = 264
    Width = 74
    Height = 19
    Caption = #1047#1072#1075#1086#1090#1086#1074#1082#1072
  end
  object Label2: TLabel
    Left = 16
    Top = 320
    Width = 102
    Height = 19
    Caption = #1050#1086#1088#1086#1090#1082#1086#1077' '#1080#1084#1103
  end
  object Label3: TLabel
    Left = 17
    Top = 383
    Width = 86
    Height = 19
    Caption = #1048#1085#1089#1090#1088#1091#1082#1094#1080#1103
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 795
    Height = 220
    Align = alTop
    DataSource = DM.Dpr
    DrawingStyle = gdsClassic
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'name_pr'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'short_name'
        Title.Caption = #1050#1086#1088#1086#1090#1082#1086#1077' '#1080#1084#1103
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'instruction'
        Title.Caption = #1048#1085#1089#1090#1088#1091#1082#1094#1080#1103
        Width = 300
        Visible = True
      end>
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 220
    Width = 795
    Height = 29
    ButtonHeight = 25
    ButtonWidth = 24
    Caption = 'ToolBar1'
    Images = DM.ImageList1
    TabOrder = 1
    ExplicitWidth = 501
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Hint = #1053#1086#1074#1072#1103' '#1079#1072#1075#1086#1090#1086#1074#1082#1072
      AutoSize = True
      Caption = 'ToolButton1'
      ImageIndex = 0
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton1Click
    end
    object ToolButton3: TToolButton
      Left = 23
      Top = 0
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object ToolButton2: TToolButton
      Left = 31
      Top = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1079#1072#1075#1086#1090#1086#1074#1082#1091
      Caption = 'ToolButton2'
      ImageIndex = 3
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton2Click
    end
    object ToolButton4: TToolButton
      Left = 55
      Top = 0
      Width = 8
      Caption = 'ToolButton4'
      ImageIndex = 4
      Style = tbsSeparator
    end
    object ToolButton6: TToolButton
      Left = 63
      Top = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1075#1086#1090#1086#1074#1082#1091
      Caption = 'ToolButton6'
      ImageIndex = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton6Click
    end
    object ToolButton7: TToolButton
      Left = 87
      Top = 0
      Width = 10
      Caption = 'ToolButton7'
      ImageIndex = 3
      Style = tbsSeparator
    end
    object ToolButton11: TToolButton
      Left = 97
      Top = 0
      Caption = 'ToolButton11'
    end
    object ToolButton10: TToolButton
      Left = 121
      Top = 0
      Width = 8
      Caption = 'ToolButton10'
      ImageIndex = 5
      Style = tbsSeparator
    end
    object ToolButton5: TToolButton
      Left = 129
      Top = 0
      Hint = #1054#1082'!'
      Caption = 'ToolButton5'
      ImageIndex = 1
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton5Click
    end
    object ToolButton8: TToolButton
      Left = 153
      Top = 0
      Width = 8
      Caption = 'ToolButton8'
      ImageIndex = 3
      Style = tbsSeparator
    end
    object ToolButton9: TToolButton
      Left = 161
      Top = 0
      Hint = #1054#1090#1084#1077#1085#1072
      Caption = 'ToolButton9'
      ImageIndex = 4
      ParentShowHint = False
      ShowHint = True
      OnClick = Button2Click
    end
  end
  object Edit1: TEdit
    Left = 16
    Top = 289
    Width = 225
    Height = 25
    TabOrder = 2
    OnExit = Edit1Exit
    OnKeyPress = Edit1KeyPress
  end
  object Button1: TButton
    Left = 225
    Top = 255
    Width = 75
    Height = 25
    Caption = #1054#1082
    TabOrder = 3
    Visible = False
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 306
    Top = 255
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 4
    Visible = False
    OnClick = Button2Click
  end
  object Edit2: TEdit
    Left = 16
    Top = 345
    Width = 121
    Height = 25
    TabOrder = 5
    OnKeyPress = Edit2KeyPress
  end
  object Memo1: TMemo
    Left = 17
    Top = 408
    Width = 470
    Height = 81
    Lines.Strings = (
      'Memo1')
    ScrollBars = ssVertical
    TabOrder = 6
  end
  object BindSourceDB1: TBindSourceDB
    DataSource = DM.Dpr
    ScopeMappings = <>
    Left = 360
    Top = 248
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 20
    Top = 5
  end
end
