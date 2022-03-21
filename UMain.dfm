object fmWinapi: TfmWinapi
  Left = 147
  Top = 74
  BorderStyle = bsSingle
  Caption = #1054#1073#1079#1086#1088' Windows API | '#1055#1086#1089#1090#1086#1088#1086#1085#1085#1080#1077' '#1086#1082#1085#1072
  ClientHeight = 444
  ClientWidth = 596
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object btnRefresh: TSpeedButton
    Left = 8
    Top = 415
    Width = 129
    Height = 25
    Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1089#1087#1080#1089#1086#1082
    Flat = True
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    OnClick = btnRefreshClick
  end
  object Label1: TLabel
    Left = 8
    Top = 0
    Width = 261
    Height = 26
    Caption = #1065#1077#1083#1082#1085#1080#1090#1077' '#1076#1074#1072' '#1088#1072#1079#1072' '#1085#1072' '#1085#1091#1078#1085#1086#1084' '#1086#1082#1085#1077', '#1095#1090#1086#1073#1099' '#1074#1099#1073#1088#1072#1090#1100' '#1077#1075#1086
    WordWrap = True
  end
  object Label2: TLabel
    Left = 280
    Top = 0
    Width = 129
    Height = 13
    Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086#1073' '#1086#1082#1085#1077':'
  end
  object btnApply: TSpeedButton
    Left = 144
    Top = 415
    Width = 129
    Height = 25
    Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
    Flat = True
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    OnClick = btnApplyClick
  end
  object pcWndInfo: TPageControl
    Left = 280
    Top = 16
    Width = 313
    Height = 425
    ActivePage = tsMain
    HotTrack = True
    MultiLine = True
    TabOrder = 0
    OnChanging = pcWndInfoChanging
    object tsMain: TTabSheet
      Caption = #1054#1089#1085#1086#1074#1085#1072#1103
      object Label3: TLabel
        Left = 8
        Top = 4
        Width = 66
        Height = 13
        Caption = #1047#1072#1075#1086#1083#1086#1074#1086#1082':'
      end
      object Label4: TLabel
        Left = 6
        Top = 25
        Width = 39
        Height = 13
        Caption = #1050#1083#1072#1089#1089':'
      end
      object Label5: TLabel
        Left = 6
        Top = 43
        Width = 73
        Height = 13
        Caption = #1044#1077#1089#1082#1088#1080#1087#1090#1086#1088':'
      end
      object Label6: TLabel
        Left = 8
        Top = 142
        Width = 125
        Height = 13
        Caption = #1047#1072#1075#1086#1083#1086#1074#1086#1082' '#1088#1086#1076#1080#1090#1077#1083#1103':'
      end
      object Label7: TLabel
        Left = 8
        Top = 164
        Width = 132
        Height = 13
        Caption = #1044#1077#1089#1082#1088#1080#1087#1090#1086#1088' '#1088#1086#1076#1080#1090#1077#1083#1103':'
      end
      object Label8: TLabel
        Left = 8
        Top = 184
        Width = 42
        Height = 13
        Caption = #1057#1083#1077#1074#1072':'
      end
      object Label9: TLabel
        Left = 8
        Top = 209
        Width = 49
        Height = 13
        Caption = #1057#1074#1077#1088#1093#1091':'
      end
      object Label10: TLabel
        Left = 8
        Top = 236
        Width = 47
        Height = 13
        Caption = #1042#1099#1089#1086#1090#1072':'
      end
      object Label11: TLabel
        Left = 8
        Top = 262
        Width = 51
        Height = 13
        Caption = #1064#1080#1088#1080#1085#1072':'
      end
      object Label12: TLabel
        Left = 8
        Top = 287
        Width = 41
        Height = 13
        Caption = #1057#1085#1080#1079#1091':'
      end
      object Label13: TLabel
        Left = 8
        Top = 343
        Width = 132
        Height = 13
        Caption = #1044#1080#1089#1087#1083#1077#1081#1085#1099#1081' '#1082#1086#1085#1090#1077#1082#1089#1090':'
      end
      object Label14: TLabel
        Left = 8
        Top = 118
        Width = 61
        Height = 13
        Caption = 'hInstance:'
      end
      object Label15: TLabel
        Left = 8
        Top = 362
        Width = 155
        Height = 13
        Caption = #1048#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088' '#1087#1088#1086#1094#1077#1089#1089#1072':'
      end
      object Label16: TLabel
        Left = 6
        Top = 61
        Width = 108
        Height = 13
        Caption = #1044#1077#1089#1082#1088#1080#1087#1090#1086#1088' '#1084#1077#1085#1102':'
      end
      object Label17: TLabel
        Left = 5
        Top = 88
        Width = 48
        Height = 13
        Caption = #1048#1082#1086#1085#1082#1072':'
      end
      object Bevel1: TBevel
        Left = 168
        Top = 2
        Width = 2
        Height = 375
        Shape = bsLeftLine
      end
      object lbWClass: TLabel
        Left = 184
        Top = 26
        Width = 4
        Height = 13
      end
      object lbWHandle: TLabel
        Left = 184
        Top = 43
        Width = 4
        Height = 13
      end
      object lbWHMenu: TLabel
        Left = 184
        Top = 61
        Width = 4
        Height = 13
      end
      object imWIcon: TImage
        Left = 184
        Top = 80
        Width = 32
        Height = 32
        PopupMenu = pmWIcon
        OnClick = imWIconClick
      end
      object Bevel2: TBevel
        Left = 0
        Top = 39
        Width = 305
        Height = 4
        Shape = bsBottomLine
      end
      object Bevel3: TBevel
        Left = 0
        Top = 56
        Width = 305
        Height = 4
        Shape = bsBottomLine
      end
      object Bevel4: TBevel
        Left = 0
        Top = 74
        Width = 305
        Height = 4
        Shape = bsBottomLine
      end
      object Bevel5: TBevel
        Left = 0
        Top = 20
        Width = 305
        Height = 5
        Shape = bsBottomLine
      end
      object Bevel6: TBevel
        Left = 0
        Top = 112
        Width = 305
        Height = 4
        Shape = bsBottomLine
      end
      object Bevel7: TBevel
        Left = 0
        Top = 202
        Width = 305
        Height = 4
        Shape = bsBottomLine
      end
      object Bevel8: TBevel
        Left = 0
        Top = 176
        Width = 305
        Height = 4
        Shape = bsBottomLine
      end
      object Bevel9: TBevel
        Left = 0
        Top = 159
        Width = 305
        Height = 4
        Shape = bsBottomLine
      end
      object Bevel10: TBevel
        Left = 0
        Top = 132
        Width = 305
        Height = 4
        Shape = bsBottomLine
      end
      object Bevel11: TBevel
        Left = 0
        Top = 337
        Width = 305
        Height = 4
        Shape = bsBottomLine
      end
      object Bevel12: TBevel
        Left = 0
        Top = 280
        Width = 305
        Height = 4
        Shape = bsBottomLine
      end
      object Bevel13: TBevel
        Left = 0
        Top = 255
        Width = 305
        Height = 4
        Shape = bsBottomLine
      end
      object Bevel14: TBevel
        Left = 0
        Top = 228
        Width = 305
        Height = 4
        Shape = bsBottomLine
      end
      object Bevel18: TBevel
        Left = 0
        Top = 356
        Width = 305
        Height = 4
        Shape = bsBottomLine
      end
      object lbWHinst: TLabel
        Left = 184
        Top = 118
        Width = 4
        Height = 13
      end
      object lbPWHandle: TLabel
        Left = 184
        Top = 164
        Width = 4
        Height = 13
      end
      object lbWProcId: TLabel
        Left = 184
        Top = 362
        Width = 4
        Height = 13
      end
      object lbWDC: TLabel
        Left = 184
        Top = 342
        Width = 4
        Height = 13
      end
      object Label18: TLabel
        Left = 8
        Top = 316
        Width = 49
        Height = 13
        Caption = #1057#1087#1088#1072#1074#1072':'
      end
      object Bevel15: TBevel
        Left = 0
        Top = 309
        Width = 305
        Height = 4
        Shape = bsBottomLine
      end
      object edWText: TEdit
        Left = 183
        Top = 0
        Width = 121
        Height = 21
        TabOrder = 0
      end
      object edPWText: TEdit
        Left = 183
        Top = 138
        Width = 121
        Height = 21
        TabOrder = 1
      end
      object edWWidth: TEdit
        Left = 183
        Top = 260
        Width = 121
        Height = 21
        TabOrder = 2
      end
      object EdWHeight: TEdit
        Left = 183
        Top = 234
        Width = 121
        Height = 21
        TabOrder = 3
      end
      object edWTop: TEdit
        Left = 183
        Top = 207
        Width = 121
        Height = 21
        TabOrder = 4
      end
      object edWLeft: TEdit
        Left = 183
        Top = 182
        Width = 121
        Height = 21
        TabOrder = 5
      end
      object edWBottom: TEdit
        Left = 183
        Top = 286
        Width = 121
        Height = 21
        TabOrder = 6
      end
      object edWRight: TEdit
        Left = 183
        Top = 315
        Width = 121
        Height = 21
        TabOrder = 7
      end
    end
    object tsWndStyle: TTabSheet
      Caption = #1057#1090#1080#1083#1100' '#1086#1082#1085#1072
      ImageIndex = 1
      object lvWndStyle: TListView
        Left = 0
        Top = 0
        Width = 305
        Height = 379
        Align = alClient
        Checkboxes = True
        Columns = <
          item
            AutoSize = True
            Caption = 'WndStyle'
          end>
        FullDrag = True
        ShowColumnHeaders = False
        TabOrder = 0
        ViewStyle = vsReport
      end
    end
    object tsExWndStyle: TTabSheet
      Caption = #1056#1072#1089#1096#1080#1088#1077#1085#1085#1099#1081' '#1089#1090#1080#1083#1100' '#1086#1082#1085#1072
      ImageIndex = 2
      object lvExWndStyle: TListView
        Left = 0
        Top = 0
        Width = 305
        Height = 379
        Align = alClient
        Checkboxes = True
        Columns = <
          item
            AutoSize = True
            Caption = 'WndStyle'
          end>
        FullDrag = True
        ShowColumnHeaders = False
        TabOrder = 0
        ViewStyle = vsReport
      end
    end
    object tsClassStyle: TTabSheet
      Caption = #1057#1090#1080#1083#1100' '#1082#1083#1072#1089#1089#1072' '#1086#1082#1085#1072
      ImageIndex = 3
      object lvClassStyle: TListView
        Left = 0
        Top = 0
        Width = 305
        Height = 379
        Align = alClient
        Checkboxes = True
        Columns = <
          item
            AutoSize = True
            Caption = 'WndStyle'
          end>
        FullDrag = True
        ShowColumnHeaders = False
        TabOrder = 0
        ViewStyle = vsReport
      end
    end
  end
  object tvList: TTreeView
    Left = 8
    Top = 32
    Width = 265
    Height = 377
    ChangeDelay = 200
    Ctl3D = True
    HotTrack = True
    Indent = 19
    ParentCtl3D = False
    ParentShowHint = False
    ReadOnly = True
    ShowHint = False
    TabOrder = 1
    OnCustomDrawItem = tvListCustomDrawItem
    OnDblClick = tvListDblClick
  end
  object odIcon: TOpenPictureDialog
    Filter = #1048#1082#1086#1085#1082#1080' (*.ico)|*.ico'
    Title = #1047#1072#1084#1077#1085#1072' '#1080#1082#1086#1085#1082#1080
    Left = 512
    Top = 152
  end
  object pmWIcon: TPopupMenu
    Left = 544
    Top = 152
    object pmSave: TMenuItem
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      OnClick = pmSaveClick
    end
  end
  object sdIcon: TSavePictureDialog
    DefaultExt = 'ico'
    Filter = #1048#1082#1086#1085#1082#1080' (*.ico)|*.ico'
    Title = #1057#1086#1093#1088#1072#1085#1077#1085#1080#1077' '#1080#1082#1086#1085#1082#1080
    Left = 472
    Top = 144
  end
  object MainMenu1: TMainMenu
    Left = 16
    Top = 40
    object N1: TMenuItem
      Caption = #1050#1086#1084#1072#1085#1076#1099
      object N2: TMenuItem
        Caption = #1057#1074#1077#1088#1085#1091#1090#1100
        OnClick = N2Click
      end
      object N3: TMenuItem
        Caption = #1042#1086#1089#1089#1090#1072#1085#1086#1074#1080#1090#1100
        OnClick = N3Click
      end
      object N4: TMenuItem
        Caption = #1052#1072#1082#1089#1080#1084#1080#1079#1080#1088#1086#1074#1072#1090#1100
        OnClick = N4Click
      end
      object N6: TMenuItem
        Caption = #1047#1072#1087#1088#1077#1090#1080#1090#1100
        OnClick = N6Click
      end
      object N7: TMenuItem
        Caption = #1056#1072#1079#1088#1077#1096#1080#1090#1100
        OnClick = N7Click
      end
      object N10: TMenuItem
        Caption = #1057#1082#1088#1099#1090#1100
        OnClick = N10Click
      end
      object N11: TMenuItem
        Caption = #1055#1086#1082#1072#1079#1072#1090#1100
        OnClick = N11Click
      end
      object N5: TMenuItem
        Caption = #1047#1072#1082#1088#1099#1090#1100
        OnClick = N5Click
      end
    end
    object N8: TMenuItem
      Caption = #1057#1087#1080#1089#1086#1082
      object N9: TMenuItem
        Caption = #1054#1073#1085#1086#1074#1080#1090#1100
        OnClick = N9Click
      end
    end
  end
end
