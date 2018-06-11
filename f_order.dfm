object Forder: TForder
  Left = 0
  Top = 0
  Caption = #1047#1072#1082#1072#1079#1099
  ClientHeight = 520
  ClientWidth = 1093
  Color = clWindow
  Ctl3D = False
  DragKind = dkDock
  DragMode = dmAutomatic
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  Font.Quality = fqDraft
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 19
  object DBGrid1: TDBGrid
    Left = 0
    Top = 29
    Width = 1093
    Height = 491
    Align = alClient
    DataSource = DM.DQorder
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleFont.Quality = fqDraft
    Columns = <
      item
        Expanded = False
        FieldName = 'Id'
        Title.Caption = #8470' '#1079#1072#1082#1072#1079#1072
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FIO'
        Title.Caption = #1060#1048#1054
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'date_order'
        Title.Caption = #1044#1072#1090#1072' '#1079#1072#1082#1072#1079#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'date_term'
        Title.Caption = #1057#1088#1086#1082
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Summa'
        Title.Caption = #1057#1091#1084#1084#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'note'
        Title.Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
        Width = 240
        Visible = True
      end>
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 1093
    Height = 29
    ButtonHeight = 29
    ButtonWidth = 26
    Caption = 'ToolBar1'
    Images = DM.ImageList1
    TabOrder = 1
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Caption = 'ToolButton1'
      ImageIndex = 0
    end
    object ToolButton2: TToolButton
      Left = 26
      Top = 0
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 1
      Style = tbsSeparator
    end
  end
end
