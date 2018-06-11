object Faddmodel: TFaddmodel
  Left = 0
  Top = 0
  Caption = 'Faddmodel'
  ClientHeight = 255
  ClientWidth = 432
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  GlassFrame.Bottom = 50
  GlassFrame.SheetOfGlass = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormPaint
  DesignSize = (
    432
    255)
  PixelsPerInch = 96
  TextHeight = 19
  inline Frchoosepr1: TFrchoosepr
    Left = 12
    Top = 0
    Width = 362
    Height = 249
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    ExplicitLeft = 12
    ExplicitHeight = 249
    inherited Button1: TButton
      Top = 41
      ExplicitTop = 41
    end
    inherited ListBox1: TListBox
      Height = 200
      OnClick = Frchoosepr1ListBox1Click
      ExplicitHeight = 200
    end
    inherited BindSourceDB1: TBindSourceDB
      Left = 296
      Top = 0
    end
    inherited BindingsList1: TBindingsList
      Left = 324
      Top = 117
    end
  end
  object Button1: TButton
    Left = 322
    Top = 214
    Width = 102
    Height = 33
    Anchors = [akRight, akBottom]
    Caption = #1044#1072#1083#1077#1077'>>>'
    Enabled = False
    TabOrder = 1
    OnClick = Button1Click
  end
  inline Frnext21: TFrnext2
    Left = 0
    Top = 0
    Width = 432
    Height = 203
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Visible = False
    ExplicitWidth = 432
    inherited Panel1: TPanel
      Width = 432
      BevelOuter = bvNone
      Ctl3D = False
      ParentCtl3D = False
      ExplicitTop = 0
      ExplicitWidth = 432
      ExplicitHeight = 203
      inherited Edit1: TEdit
        Height = 25
        ExplicitHeight = 25
      end
      inherited Edit2: TEdit
        Height = 25
        ExplicitHeight = 25
      end
    end
  end
end
