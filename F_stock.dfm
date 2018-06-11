object Fstock: TFstock
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = #1057#1082#1083#1072#1076
  ClientHeight = 536
  ClientWidth = 1077
  Color = clBtnFace
  DragKind = dkDock
  DragMode = dmAutomatic
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
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 1077
    Height = 29
    ButtonHeight = 25
    ButtonWidth = 24
    Caption = 'ToolBar1'
    Images = DM.ImageList1
    TabOrder = 0
    ExplicitWidth = 1036
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Caption = 'ToolButton1'
      ImageIndex = 0
      OnClick = ToolButton1Click
    end
    object ToolButton2: TToolButton
      Left = 24
      Top = 0
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object ToolButton3: TToolButton
      Left = 32
      Top = 0
      Caption = 'ToolButton3'
      ImageIndex = 3
      OnClick = ToolButton3Click
    end
    object ToolButton4: TToolButton
      Left = 56
      Top = 0
      Width = 8
      Caption = 'ToolButton4'
      ImageIndex = 4
      Style = tbsSeparator
    end
    object ToolButton5: TToolButton
      Left = 64
      Top = 0
      Caption = 'ToolButton5'
      ImageIndex = 2
      OnClick = ToolButton5Click
    end
    object ToolButton6: TToolButton
      Left = 88
      Top = 0
      Width = 8
      Caption = 'ToolButton6'
      ImageIndex = 3
      Style = tbsSeparator
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 29
    Width = 1077
    Height = 507
    Align = alClient
    DataSource = DM.DQstock
    DragKind = dkDock
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = ToolButton3Click
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
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cost'
        Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'num'
        Title.Caption = #1054#1089#1090#1072#1090#1082#1080
        Visible = True
      end
      item
        ButtonStyle = cbsEllipsis
        Expanded = False
        FieldName = 'reserve'
        Title.Caption = #1056#1077#1079#1077#1088#1074
        Visible = True
      end
      item
        ButtonStyle = cbsEllipsis
        Expanded = False
        FieldName = 'arhive'
        Title.Caption = #1040#1088#1093#1080#1074
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'date_buy'
        Title.Caption = #1044#1072#1090#1072' '#1087#1086#1082#1091#1087#1082#1080
        Width = 115
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'client'
        Title.Caption = #1052#1072#1081#1082#1072' '#1082#1083#1080#1077#1090#1072
        Visible = True
      end>
  end
end
