object Fraddstock: TFraddstock
  Left = 0
  Top = 0
  Width = 826
  Height = 230
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 826
    Height = 225
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 66
      Height = 19
      Caption = #1052#1086#1076#1077#1083#1100': '
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 37
      Width = 824
      Height = 187
      Align = alBottom
      Ctl3D = False
      DataSource = DM.DqModels
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentCtl3D = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'model_name'
          Title.Caption = #1052#1086#1076#1077#1083#1100
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'name_pr'
          Title.Caption = #1047#1072#1075#1086#1090#1086#1074#1082#1072
          Width = 300
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Full_name'
          Title.Caption = #1054#1087#1080#1089#1072#1085#1080#1077
          Width = 300
          Visible = True
        end>
    end
    object Button3: TButton
      Left = 664
      Top = 6
      Width = 149
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1084#1086#1076#1077#1083#1100
      TabOrder = 1
      OnClick = Button3Click
    end
  end
end
