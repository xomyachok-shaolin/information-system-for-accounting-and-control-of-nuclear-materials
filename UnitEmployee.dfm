object Form19: TForm19
  Left = 0
  Top = 0
  Caption = #1057#1059#1080#1050' '#1071#1052' - '#1057#1086#1090#1088#1091#1076#1085#1080#1082#1080
  ClientHeight = 400
  ClientWidth = 578
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 366
    Width = 578
    Height = 34
    Align = alBottom
    AutoSize = True
    TabOrder = 2
    object Button3: TButton
      AlignWithMargins = True
      Left = 286
      Top = 4
      Width = 135
      Height = 26
      Hint = 'Ctrl + D'
      Align = alLeft
      Caption = #1059#1076#1072#1083#1080#1090#1100
      ImageIndex = 1
      ImageMargins.Left = 30
      ImageMargins.Right = -30
      Images = Form1.ImageList1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button2: TButton
      AlignWithMargins = True
      Left = 145
      Top = 4
      Width = 135
      Height = 26
      Hint = 'Ctrl + E'
      Align = alLeft
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      ImageIndex = 2
      ImageMargins.Left = 15
      ImageMargins.Right = -15
      Images = Form1.ImageList1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button1: TButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 135
      Height = 26
      Hint = 'Ctrl + A'
      HelpContext = 25
      Align = alLeft
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      ImageIndex = 0
      ImageMargins.Left = 30
      ImageMargins.Right = -30
      Images = Form1.ImageList1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = Button1Click
      ExplicitTop = 6
    end
    object Button7: TButton
      AlignWithMargins = True
      Left = 439
      Top = 4
      Width = 135
      Height = 26
      Hint = 'Esc'
      Align = alRight
      Cancel = True
      Caption = #1042#1099#1093#1086#1076
      ImageIndex = 3
      ImageMargins.Left = 35
      ImageMargins.Right = -35
      Images = Form1.ImageList1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = Button7Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 332
    Width = 578
    Height = 34
    Align = alBottom
    AutoSize = True
    TabOrder = 1
    object Label2: TLabel
      AlignWithMargins = True
      Left = 8
      Top = 8
      Width = 56
      Height = 22
      Margins.Left = 7
      Margins.Top = 7
      Align = alLeft
      Alignment = taCenter
      Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082
      Transparent = True
      ExplicitHeight = 13
    end
    object Edit2: TEdit
      AlignWithMargins = True
      Left = 70
      Top = 4
      Width = 92
      Height = 26
      Align = alLeft
      TabOrder = 0
      OnChange = Edit2Change
      ExplicitHeight = 21
    end
    object DBNavigator2: TDBNavigator
      AlignWithMargins = True
      Left = 168
      Top = 4
      Width = 157
      Height = 26
      DataSource = DataSourceEmployee
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alClient
      TabOrder = 1
    end
    object Panel7: TPanel
      AlignWithMargins = True
      Left = 436
      Top = 4
      Width = 138
      Height = 26
      Align = alRight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      Visible = False
      object DBEdit2: TDBEdit
        Left = 1
        Top = 1
        Width = 136
        Height = 24
        Align = alClient
        BorderStyle = bsNone
        Color = clMenu
        DataField = #1056#1072#1073#1086#1090#1072#1102#1097#1080#1081
        DataSource = DataSourceEmployee
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Visible = False
        OnChange = DBEdit2Change
      end
    end
    object Button4: TButton
      AlignWithMargins = True
      Left = 331
      Top = 4
      Width = 99
      Height = 26
      Hint = 'Ctrl + S'
      Align = alRight
      Caption = #1042#1099#1073#1088#1072#1090#1100
      ImageIndex = 7
      ImageMargins.Left = 10
      ImageMargins.Top = 3
      ImageMargins.Right = -10
      ImageMargins.Bottom = 5
      Images = Form1.ImageList1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      Visible = False
      OnClick = Button4Click
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 578
    Height = 332
    Align = alClient
    TabOrder = 0
    object DBGrid2: TDBGrid
      Left = 1
      Top = 1
      Width = 576
      Height = 330
      Align = alClient
      BiDiMode = bdLeftToRight
      DataSource = DataSourceEmployee
      DrawingStyle = gdsGradient
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentBiDiMode = False
      ParentColor = True
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = #1058#1072#1073#1077#1083#1100#1085#1099#1081' '#8470
          Visible = True
        end
        item
          Expanded = False
          FieldName = #1060#1048#1054' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
          Width = 135
          Visible = True
        end
        item
          Expanded = False
          FieldName = #1044#1086#1083#1078#1085#1086#1089#1090#1100
          Width = 102
          Visible = True
        end
        item
          Expanded = False
          FieldName = #1060#1048#1054' '#1088#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1103
          Width = 139
          Visible = True
        end
        item
          Expanded = False
          FieldName = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
          Title.Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = #1055#1086#1083
          Visible = True
        end
        item
          Expanded = False
          FieldName = #1055#1072#1089#1087#1086#1088#1090
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = #1040#1076#1088#1077#1089
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = #1048#1053#1053
          Visible = True
        end
        item
          Expanded = False
          FieldName = #1057#1053#1048#1051#1057
          Visible = True
        end>
    end
    object DBEdit1: TDBEdit
      Left = 404
      Top = 189
      Width = 126
      Height = 21
      Align = alCustom
      DataField = #1048#1044'_'#1057#1054#1058#1056#1059#1044#1053#1048#1050#1040
      DataSource = DataSourceEmployee
      ReadOnly = True
      TabOrder = 1
      Visible = False
    end
  end
  object DataSourceEmployee: TDataSource
    DataSet = ADOQueryEmployee
    Left = 131
    Top = 196
  end
  object ADOQueryEmployee: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#1082#1072#1076#1088#1099)
    Left = 243
    Top = 196
  end
  object ADOStoredProc1: TADOStoredProc
    Connection = Form1.ADOConnection1
    DataSource = DataSourceEmployee
    ProcedureName = 'MASS_19.'#1057#1059#1048#1050'_'#1071#1052'.'#1059#1044#1040#1051#1048#1058#1068'_'#1057#1054#1058#1056#1059#1044#1053#1048#1050#1040
    Parameters = <>
    Left = 331
    Top = 348
  end
  object ActionList1: TActionList
    Left = 424
    Top = 280
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 16449
      OnExecute = Action1Execute
    end
    object Action2: TAction
      Caption = 'Action2'
      ShortCut = 16453
      OnExecute = Action2Execute
    end
    object Action3: TAction
      Caption = 'Action3'
      ShortCut = 16452
      OnExecute = Action3Execute
    end
    object Action4: TAction
      Caption = 'Action4'
      ShortCut = 16467
      OnExecute = Action4Execute
    end
  end
end
