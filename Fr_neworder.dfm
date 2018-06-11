object Frneworder: TFrneworder
  Left = 0
  Top = 0
  Width = 695
  Height = 237
  Align = alBottom
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  ExplicitWidth = 685
  object DBGrid1: TDBGrid
    Left = 0
    Top = 29
    Width = 695
    Height = 208
    Align = alClient
    DataSource = DM.Dqclient
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
        FieldName = 'FIO'
        Title.Caption = #1060#1048#1054
        Width = 300
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
        FieldName = 'e_mail'
        Title.Caption = 'E_mail'
        Width = 200
        Visible = True
      end>
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 695
    Height = 29
    ButtonHeight = 29
    ButtonWidth = 26
    Caption = 'ToolBar1'
    Images = DM.ImageList1
    TabOrder = 1
    ExplicitLeft = 240
    ExplicitTop = 8
    ExplicitWidth = 150
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Caption = 'ToolButton1'
      ImageIndex = 0
      OnClick = ToolButton1Click
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
