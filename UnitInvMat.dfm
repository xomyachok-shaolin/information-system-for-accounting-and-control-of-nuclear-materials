object Form30: TForm30
  Left = 0
  Top = 0
  Align = alCustom
  Caption = #1057#1059#1080#1050' '#1071#1052' - '#1059#1095#1077#1090#1085#1099#1077' '#1077#1076#1080#1085#1080#1094#1099
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
      Left = 4
      Top = 8
      Width = 106
      Height = 18
      Margins.Top = 7
      Align = alLeft
      Alignment = taRightJustify
      Caption = #8470' '#1091#1095#1077#1090#1085#1086#1081' '#1077#1076#1080#1085#1080#1094#1099
      ExplicitHeight = 13
    end
    object Edit2: TEdit
      AlignWithMargins = True
      Left = 116
      Top = 4
      Width = 109
      Height = 22
      Align = alLeft
      TabOrder = 0
      OnChange = Edit2Change
      ExplicitHeight = 21
    end
    object DBNavigator2: TDBNavigator
      AlignWithMargins = True
      Left = 231
      Top = 4
      Width = 350
      Height = 22
      DataSource = DataSourceInvMat
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alClient
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
      DataSource = DataSourceInvMat
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
          FieldName = #1058#1080#1087' '#1084#1072#1090#1077#1088#1080#1072#1083#1072
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = #1057#1077#1088#1080#1081#1085#1099#1081' '#8470' '#1059#1045
          Title.Caption = #8470' '#1091#1095#1077#1090'. '#1077#1076'.'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = #1050#1086#1085#1090#1077#1081#1085#1077#1088
          Visible = True
        end
        item
          Expanded = False
          FieldName = #1060#1086#1088#1084#1072
          Width = 86
          Visible = True
        end
        item
          Expanded = False
          FieldName = #1047#1041#1052
          Visible = True
        end
        item
          Expanded = False
          FieldName = #1047#1076#1072#1085#1080#1077
          Visible = True
        end
        item
          Expanded = False
          FieldName = #1055#1086#1084#1077#1097#1077#1085#1080#1077
          Visible = True
        end
        item
          Expanded = False
          FieldName = #1042#1077#1089' '#1085#1077#1090#1090#1086
          Title.Caption = #1042#1077#1089' '#1073#1088#1091#1090#1090#1086
          Visible = True
        end
        item
          Expanded = False
          FieldName = #1048#1085#1074'. '#8470' '#1074#1077#1089#1086#1074
          Title.Caption = #8470' '#1074#1077#1089#1086#1074
          Width = 47
          Visible = True
        end>
    end
  end
  object DBEdit1: TDBEdit
    Left = 435
    Top = 88
    Width = 121
    Height = 21
    DataField = #1048#1044'_'#1059#1045
    DataSource = DataSourceInvMat
    TabOrder = 3
    Visible = False
  end
  object DataSourceInvMat: TDataSource
    DataSet = ADOQueryInvMat
    Left = 208
    Top = 80
  end
  object ADOQueryInvMat: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'select * from '#1090#1084'_'#1091#1077)
    Left = 312
    Top = 80
  end
  object ADOStoredProc1: TADOStoredProc
    Connection = Form1.ADOConnection1
    ProcedureName = 'MASS_19.'#1057#1059#1048#1050'_'#1071#1052'.'#1059#1044#1040#1051#1048#1058#1068'_'#1059#1063#1045#1058#1053#1059#1070'_'#1045#1044#1048#1053#1048#1062#1059
    Parameters = <>
    Left = 353
    Top = 187
  end
  object ActionList1: TActionList
    Left = 200
    Top = 176
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
