object Fparams: TFparams
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1084#1086#1076#1077#1083#1080
  ClientHeight = 333
  ClientWidth = 535
  Color = clWindow
  Ctl3D = False
  DragKind = dkDock
  DragMode = dmAutomatic
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 19
  object Label1: TLabel
    Left = 16
    Top = 264
    Width = 71
    Height = 19
    Caption = #1055#1072#1088#1072#1084#1077#1090#1088
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 535
    Height = 220
    Align = alTop
    DataSource = DM.Dparams
    DrawingStyle = gdsClassic
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
        FieldName = 'naim'
        Title.Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099
        Width = 500
        Visible = True
      end>
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 220
    Width = 535
    Height = 29
    ButtonHeight = 25
    ButtonWidth = 24
    Caption = 'ToolBar1'
    Images = DM.ImageList1
    TabOrder = 1
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Hint = #1053#1086#1074#1099#1081' '#1087#1072#1088#1072#1084#1077#1090#1088
      AutoSize = True
      Caption = 'ToolButton1'
      ImageIndex = 0
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton1Click
    end
    object ToolButton3: TToolButton
      Left = 23
      Top = 0
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object ToolButton2: TToolButton
      Left = 31
      Top = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Caption = 'ToolButton2'
      ImageIndex = 3
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton2Click
    end
    object ToolButton4: TToolButton
      Left = 55
      Top = 0
      Width = 8
      Caption = 'ToolButton4'
      ImageIndex = 4
      Style = tbsSeparator
    end
    object ToolButton6: TToolButton
      Left = 63
      Top = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Caption = 'ToolButton6'
      ImageIndex = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton6Click
    end
    object ToolButton7: TToolButton
      Left = 87
      Top = 0
      Width = 10
      Caption = 'ToolButton7'
      ImageIndex = 3
      Style = tbsSeparator
    end
    object ToolButton11: TToolButton
      Left = 97
      Top = 0
      Caption = 'ToolButton11'
    end
    object ToolButton10: TToolButton
      Left = 121
      Top = 0
      Width = 8
      Caption = 'ToolButton10'
      ImageIndex = 5
      Style = tbsSeparator
    end
    object ToolButton5: TToolButton
      Left = 129
      Top = 0
      Hint = #1054#1082'!'
      Caption = 'ToolButton5'
      ImageIndex = 1
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton5Click
    end
    object ToolButton8: TToolButton
      Left = 153
      Top = 0
      Width = 8
      Caption = 'ToolButton8'
      ImageIndex = 3
      Style = tbsSeparator
    end
    object ToolButton9: TToolButton
      Left = 161
      Top = 0
      Hint = #1054#1090#1084#1077#1085#1072
      Caption = 'ToolButton9'
      ImageIndex = 4
      ParentShowHint = False
      ShowHint = True
      OnClick = Button2Click
    end
  end
  object Edit1: TEdit
    Left = 16
    Top = 289
    Width = 225
    Height = 25
    TabOrder = 2
    OnKeyPress = Edit1KeyPress
  end
  object Button1: TButton
    Left = 369
    Top = 289
    Width = 75
    Height = 25
    Caption = #1054#1082
    TabOrder = 3
    Visible = False
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 458
    Top = 289
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 4
    Visible = False
    OnClick = Button2Click
  end
end
