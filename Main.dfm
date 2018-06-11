object Fmain: TFmain
  Left = 0
  Top = 0
  Caption = #1060#1086#1090#1086#1044#1088#1091#1082#1072#1088#1085#1103
  ClientHeight = 497
  ClientWidth = 1094
  Color = clBtnFace
  UseDockManager = True
  DefaultMonitor = dmDesktop
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 19
  object Splitter1: TSplitter
    Left = 209
    Top = 0
    Width = 7
    Height = 478
    MinSize = 250
    ResizeStyle = rsUpdate
    ExplicitLeft = 202
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 478
    Width = 1094
    Height = 19
    Panels = <>
  end
  object TreeView1: TTreeView
    Left = 0
    Top = 0
    Width = 209
    Height = 478
    Align = alLeft
    Indent = 19
    ReadOnly = True
    RowSelect = True
    TabOrder = 1
    OnClick = TreeView1Click
    Items.NodeData = {
      0305000000300000000000000000000000FFFFFFFFFFFFFFFF00000000000000
      000000000001091D0430044104420440043E0439043A04380434000000000000
      0000000000FFFFFFFFFFFFFFFF000000000000000003000000010B21043F0440
      04300432043E0447043D0438043A043804300000000000000000000000FFFFFF
      FFFFFFFFFF00000000000000000000000001091704300433043E0442046F0032
      043A043804400000000000000000000000FFFFFFFFFFFFFFFF00000000000000
      000000000001111F043004400430043C043504420440044B0420003C043E0434
      0435043B04350439042A0000000000000000000000FFFFFFFFFFFFFFFF000000
      00000000000000000001061C043E04340435043B043804280000000000000000
      000000FFFFFFFFFFFFFFFF000000000000000000000000010521043A043B0430
      0434042A0000000000000000000000FFFFFFFFFFFFFFFF000000000000000000
      00000001061A043B04380435043D0442042A0000000000000000000000FFFFFF
      FFFFFFFFFF0000000000000000000000000106170430043A04300437044B04}
  end
  object Panel1: TPanel
    Left = 216
    Top = 0
    Width = 878
    Height = 478
    Align = alClient
    BevelOuter = bvLowered
    Ctl3D = False
    DockSite = True
    DragKind = dkDock
    ParentCtl3D = False
    ShowCaption = False
    TabOrder = 2
  end
end
