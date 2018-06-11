object Frchoosepr: TFrchoosepr
  Left = 0
  Top = 0
  Width = 362
  Height = 362
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 154
    Height = 19
    Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1079#1072#1075#1086#1090#1086#1074#1082#1091':'
  end
  object Button1: TButton
    Left = 272
    Top = 287
    Width = 87
    Height = 59
    Caption = #1044#1086#1073#1074#1080#1090#1100' '#1079#1072#1075#1086#1090#1086#1074#1082#1091
    TabOrder = 0
    WordWrap = True
    OnClick = Button1Click
  end
  object ListBox1: TListBox
    Left = 16
    Top = 41
    Width = 233
    Height = 305
    ItemHeight = 19
    Items.Strings = (
      #1082#1088#1091#1078#1082#1080
      #1087#1086#1076#1091#1096#1082#1072
      #1084#1072#1075#1085#1080#1090#1099
      #1096#1072#1087#1086#1095#1082#1080
      #1096#1090#1072#1085#1099
      #1084#1072#1081#1082#1072
      #1087#1083#1072#1090#1100#1077
      #1082#1091#1088#1090#1082#1072
      #1050#1088#1091#1078#1082#1072
      #1092#1086#1090#1086#1073#1091#1084#1072#1075#1072)
    TabOrder = 1
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = DM.ADOpr
    ScopeMappings = <>
    Left = 328
    Top = 24
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 20
    Top = 5
    object LinkFillControlToField1: TLinkFillControlToField
      Category = 'Quick Bindings'
      Control = ListBox1
      Track = True
      FillDataSource = BindSourceDB1
      FillDisplayFieldName = 'name_pr'
      AutoFill = True
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
  end
end
