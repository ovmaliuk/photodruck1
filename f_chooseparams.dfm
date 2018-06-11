object Fchooseparams: TFchooseparams
  Left = 250
  Top = 108
  BorderStyle = bsDialog
  Caption = 'Choices Dialog'
  ClientHeight = 355
  ClientWidth = 395
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnActivate = FormActivate
  DesignSize = (
    395
    355)
  PixelsPerInch = 96
  TextHeight = 19
  object SrcLabel: TLabel
    Left = 14
    Top = 40
    Width = 145
    Height = 16
    AutoSize = False
    Caption = #1057#1087#1080#1089#1086#1082' '#1087#1072#1088#1072#1084#1077#1090#1088#1086#1074':'
  end
  object DstLabel: TLabel
    Left = 198
    Top = 40
    Width = 169
    Height = 25
    AutoSize = False
    Caption = #1042#1099#1073#1088#1072#1085#1085#1099#1077' '#1087#1072#1088#1072#1084#1077#1090#1088#1099
  end
  object IncludeBtn: TSpeedButton
    Left = 160
    Top = 116
    Width = 24
    Height = 24
    Caption = '>'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = IncludeBtnClick
  end
  object IncAllBtn: TSpeedButton
    Left = 160
    Top = 146
    Width = 24
    Height = 24
    Caption = '>>'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = IncAllBtnClick
  end
  object ExcludeBtn: TSpeedButton
    Left = 160
    Top = 194
    Width = 24
    Height = 24
    Caption = '<'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = ExcludeBtnClick
  end
  object ExAllBtn: TSpeedButton
    Left = 160
    Top = 224
    Width = 24
    Height = 24
    Caption = '<<'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = ExcAllBtnClick
  end
  object OKBtn: TButton
    Left = 216
    Top = 322
    Width = 75
    Height = 25
    Anchors = [akBottom]
    Caption = #1054#1082
    Default = True
    ModalResult = 1
    TabOrder = 2
    OnClick = OKBtnClick
  end
  object CancelBtn: TButton
    Left = 312
    Top = 322
    Width = 75
    Height = 25
    Anchors = [akBottom]
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 3
    OnClick = CancelBtnClick
  end
  object SrcList: TListBox
    Left = 6
    Top = 62
    Width = 144
    Height = 235
    ItemHeight = 19
    MultiSelect = True
    Sorted = True
    TabOrder = 0
  end
  object DstList: TListBox
    Left = 190
    Top = 62
    Width = 177
    Height = 235
    ItemHeight = 19
    MultiSelect = True
    TabOrder = 1
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 395
    Height = 29
    ButtonHeight = 25
    Caption = 'ToolBar1'
    Images = DM.ImageList1
    TabOrder = 4
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Caption = 'ToolButton1'
      ImageIndex = 0
      OnClick = ToolButton1Click
    end
    object ToolButton2: TToolButton
      Left = 23
      Top = 0
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object ToolButton3: TToolButton
      Left = 31
      Top = 0
      Caption = 'ToolButton3'
      ImageIndex = 3
      OnClick = ToolButton3Click
    end
    object ToolButton4: TToolButton
      Left = 54
      Top = 0
      Width = 8
      Caption = 'ToolButton4'
      ImageIndex = 4
      Style = tbsSeparator
    end
  end
end
