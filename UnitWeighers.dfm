object Form13: TForm13
  Left = 0
  Top = 0
  Align = alCustom
  Caption = #1057#1059#1080#1050' '#1071#1052' - '#1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1074#1077#1089#1086#1074
  ClientHeight = 243
  ClientWidth = 585
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 213
    Width = 585
    Height = 30
    Align = alBottom
    AutoSize = True
    TabOrder = 2
    object Button3: TButton
      AlignWithMargins = True
      Left = 290
      Top = 4
      Width = 137
      Height = 22
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
      Left = 147
      Top = 4
      Width = 137
      Height = 22
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
      Width = 137
      Height = 22
      Hint = 'Ctrl + A'
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
    end
    object Button7: TButton
      AlignWithMargins = True
      Left = 444
      Top = 4
      Width = 137
      Height = 22
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
    Top = 183
    Width = 585
    Height = 30
    Align = alBottom
    AutoSize = True
    TabOrder = 1
    object Label2: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 8
      Width = 25
      Height = 18
      Margins.Left = 15
      Margins.Top = 7
      Align = alLeft
      Alignment = taRightJustify
      Caption = #1042#1077#1089#1099
      ExplicitHeight = 13
    end
    object Edit2: TEdit
      AlignWithMargins = True
      Left = 47
      Top = 4
      Width = 227
      Height = 22
      Align = alLeft
      TabOrder = 0
      OnChange = Edit2Change
      ExplicitHeight = 21
    end
    object DBNavigator2: TDBNavigator
      AlignWithMargins = True
      Left = 280
      Top = 4
      Width = 301
      Height = 22
      DataSource = DataSourceWeighers
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alRight
      TabOrder = 1
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 585
    Height = 183
    Align = alClient
    Caption = 'Panel3'
    TabOrder = 0
    object DBGrid2: TDBGrid
      Left = 1
      Top = 1
      Width = 583
      Height = 181
      Align = alClient
      BiDiMode = bdLeftToRight
      DataSource = DataSourceWeighers
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
      OnCellClick = DBGrid2CellClick
      Columns = <
        item
          Expanded = False
          FieldName = #1048#1053#1042#1045#1053#1058#1040#1056#1053#1067#1049'_'#1053#1054#1052#1045#1056'_'#1042#1045#1057#1054#1042
          Title.Caption = #1048#1085#1074#1077#1085#1090#1072#1088#1085#1099#1081' '#8470' '
          Width = 89
          Visible = True
        end
        item
          Expanded = False
          FieldName = #1044#1040#1058#1040'_'#1050#1040#1051#1048#1041#1056#1054#1042#1050#1048
          Title.Caption = #1044#1072#1090#1072' '#1082#1072#1083#1080#1073#1088#1086#1074#1082#1080
          Width = 91
          Visible = True
        end
        item
          Expanded = False
          FieldName = #1055#1056#1045#1044#1045#1051'_'#1042#1045#1057#1054#1042
          Title.Caption = #1052#1072#1082#1089'. '#1076#1086#1087#1091#1089#1090'. '#1074#1077#1089', '#1075
          Width = 114
          Visible = True
        end
        item
          Expanded = False
          FieldName = #1055#1054#1043#1056#1045#1064#1053#1054#1057#1058#1068
          Title.Caption = #1055#1086#1075#1088#1077#1096#1085#1086#1089#1090#1100', %'
          Width = 87
          Visible = True
        end
        item
          Expanded = False
          FieldName = #1052#1040#1056#1050#1040'_'#1042#1045#1057#1054#1042
          Title.Caption = #1052#1072#1088#1082#1072
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = #1057#1045#1056#1048#1049#1053#1067#1049'_'#1053#1054#1052#1045#1056
          Title.Caption = #1057#1077#1088#1080#1081#1085#1099#1081' '#8470
          Width = 84
          Visible = True
        end>
    end
  end
  object DBEdit1: TDBEdit
    Left = 435
    Top = 88
    Width = 121
    Height = 21
    DataField = #1048#1044'_'#1042#1045#1057#1054#1042
    DataSource = DataSourceWeighers
    TabOrder = 3
    Visible = False
  end
  object DataSourceWeighers: TDataSource
    DataSet = ADOQueryWeighers
    Left = 208
    Top = 80
  end
  object ADOQueryWeighers: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'select * from '#1042#1077#1089#1099)
    Left = 312
    Top = 80
  end
  object ADOStoredProc1: TADOStoredProc
    Connection = Form1.ADOConnection1
    DataSource = DataSourceWeighers
    ProcedureName = 'MASS_19.'#1057#1059#1048#1050'_'#1071#1052'.'#1059#1044#1040#1051#1048#1058#1068'_'#1042#1045#1057#1067
    Parameters = <>
    Left = 345
    Top = 187
  end
  object ActionList1: TActionList
    Left = 104
    Top = 152
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
  end
end
