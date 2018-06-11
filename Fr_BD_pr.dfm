object Frame1: TFrame1
  Left = 0
  Top = 0
  Width = 596
  Height = 149
  TabOrder = 0
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 596
    Height = 120
    Align = alTop
    DataSource = DM.Dpr
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'name_pr'
        Width = 200
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 120
    Width = 596
    Height = 25
    DataSource = DM.Dpr
    VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
    Align = alTop
    TabOrder = 1
    ExplicitLeft = 248
    ExplicitTop = 168
    ExplicitWidth = 240
  end
end
