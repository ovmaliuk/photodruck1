object Fclient: TFclient
  Left = 0
  Top = 0
  Caption = #1050#1083#1080#1077#1085#1090
  ClientHeight = 498
  ClientWidth = 1096
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
  PixelsPerInch = 96
  TextHeight = 19
  object DBGrid1: TDBGrid
    Left = 0
    Top = 29
    Width = 1096
    Height = 469
    Align = alClient
    DataSource = DM.Dclient
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = ToolButton3Click
    Columns = <
      item
        Expanded = False
        FieldName = 'FIO'
        Title.Caption = #1060#1048#1054
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'source'
        Title.Caption = #1054#1090#1082#1091#1076#1072
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tel'
        Title.Caption = #1058#1077#1083#1077#1092#1086#1085
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'adress'
        Title.Caption = #1040#1076#1088#1077#1089
        Width = 400
        Visible = True
      end>
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 1096
    Height = 29
    ButtonHeight = 29
    ButtonWidth = 25
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
      Left = 25
      Top = 0
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object ToolButton3: TToolButton
      Left = 33
      Top = 0
      Caption = 'ToolButton3'
      ImageIndex = 3
      OnClick = ToolButton3Click
    end
    object ToolButton4: TToolButton
      Left = 58
      Top = 0
      Width = 8
      Caption = 'ToolButton4'
      ImageIndex = 4
      Style = tbsSeparator
    end
    object ToolButton5: TToolButton
      Left = 66
      Top = 0
      Caption = 'ToolButton5'
      ImageIndex = 2
      OnClick = ToolButton5Click
    end
    object ToolButton6: TToolButton
      Left = 91
      Top = 0
      Width = 8
      Caption = 'ToolButton6'
      ImageIndex = 3
      Style = tbsSeparator
    end
  end
end
