object Freditstock: TFreditstock
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
    Height = 230
    Align = alClient
    BevelOuter = bvSpace
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    object Label1: TLabel
      Left = 32
      Top = 24
      Width = 55
      Height = 19
      Caption = #1052#1086#1076#1077#1083#1100
    end
    object Label2: TLabel
      Left = 32
      Top = 49
      Width = 72
      Height = 19
      Caption = 'f_paper30'
    end
    object Label3: TLabel
      Left = 32
      Top = 96
      Width = 71
      Height = 19
      Caption = #1054#1087#1080#1089#1072#1085#1080#1077
    end
    object Label4: TLabel
      Left = 32
      Top = 121
      Width = 49
      Height = 19
      Caption = '10x15 '
    end
    object Label5: TLabel
      Left = 176
      Top = 24
      Width = 74
      Height = 19
      Caption = #1047#1072#1075#1086#1090#1086#1074#1082#1072
    end
    object Label6: TLabel
      Left = 176
      Top = 49
      Width = 88
      Height = 19
      Caption = #1092#1086#1090#1086#1073#1091#1084#1072#1075#1072
    end
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = DM.ADOQstock
    ScopeMappings = <>
    Left = 600
    Top = 80
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 20
    Top = 5
    object LinkPropertyToFieldCaption: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'model_name'
      Component = Label2
      ComponentProperty = 'Caption'
    end
    object LinkPropertyToFieldCaption2: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'name_pr'
      Component = Label6
      ComponentProperty = 'Caption'
    end
    object LinkPropertyToFieldCaption3: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'Full_name'
      Component = Label4
      ComponentProperty = 'Caption'
    end
  end
end
