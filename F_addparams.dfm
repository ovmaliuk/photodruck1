object Faddparams: TFaddparams
  Left = 0
  Top = 0
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1087#1072#1088#1072#1084#1077#1090#1088#1086#1074' '#1084#1086#1076#1077#1083#1080
  ClientHeight = 419
  ClientWidth = 500
  Color = clBtnFace
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 500
    Height = 73
    Align = alTop
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    object Label1: TLabel
      Left = 223
      Top = 14
      Width = 71
      Height = 19
      Caption = #1054#1087#1080#1089#1072#1085#1080#1077
    end
    object Label2: TLabel
      Left = 223
      Top = 39
      Width = 54
      Height = 19
      Caption = #1082#1088#1091#1078#1082#1080
    end
    object Label3: TLabel
      Left = 101
      Top = 14
      Width = 74
      Height = 19
      Caption = #1047#1072#1075#1086#1090#1086#1074#1082#1072
    end
    object Label4: TLabel
      Left = 101
      Top = 39
      Width = 54
      Height = 19
      Caption = #1082#1088#1091#1078#1082#1080
    end
    object Label5: TLabel
      Left = 16
      Top = 16
      Width = 55
      Height = 19
      Caption = #1052#1086#1076#1077#1083#1100
    end
    object Label6: TLabel
      Left = 16
      Top = 41
      Width = 23
      Height = 19
      Caption = 'kr1'
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 102
    Width = 500
    Height = 317
    Align = alClient
    DataSource = DM.DQparams
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'naim'
        Title.Caption = #1055#1072#1088#1072#1084#1077#1090#1088
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'value_pr'
        Title.Caption = #1047#1085#1072#1095#1077#1085#1080#1077
        Width = 200
        Visible = True
      end>
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 73
    Width = 500
    Height = 29
    ButtonHeight = 25
    ButtonWidth = 24
    Caption = 'ToolBar1'
    Ctl3D = False
    Images = DM.ImageList1
    TabOrder = 2
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1072#1088#1072#1084#1077#1090#1088
      Caption = 'ToolButton1'
      ImageIndex = 0
      ParentShowHint = False
      ShowHint = True
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
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = DM.ADOQmodels
    ScopeMappings = <>
    Left = 432
    Top = 48
  end
  object BindSourceDB2: TBindSourceDB
    DataSet = DM.ADOmodels
    ScopeMappings = <>
    Left = 224
    Top = 208
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 444
    Top = 5
    object LinkPropertyToFieldCaption: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'Full_name'
      Component = Label2
      ComponentProperty = 'Caption'
    end
    object LinkPropertyToFieldCaption2: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'name_pr'
      Component = Label4
      ComponentProperty = 'Caption'
    end
    object LinkPropertyToFieldCaption3: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'model_name'
      Component = Label6
      ComponentProperty = 'Caption'
    end
  end
end
