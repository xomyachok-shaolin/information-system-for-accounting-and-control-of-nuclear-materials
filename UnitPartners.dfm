object Form2: TForm2
  Left = 0
  Top = 0
  Align = alCustom
  Caption = #1057#1059#1080#1050' '#1071#1052' - '#1055#1088#1077#1076#1087#1088#1080#1103#1090#1080#1103' - '#1087#1072#1088#1090#1085#1077#1088#1099
  ClientHeight = 393
  ClientWidth = 585
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 579
    Height = 190
    HelpContext = 240
    Align = alTop
    BiDiMode = bdLeftToRight
    Caption = #1055#1088#1077#1076#1087#1088#1080#1103#1090#1080#1103' - '#1087#1072#1088#1090#1085#1077#1088#1099
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    object Panel4: TPanel
      Left = 2
      Top = 158
      Width = 575
      Height = 30
      Align = alBottom
      AutoSize = True
      TabOrder = 2
      object Button4: TButton
        AlignWithMargins = True
        Left = 381
        Top = 4
        Width = 190
        Height = 22
        Hint = 'Ctrl + D'
        Align = alLeft
        Caption = #1059#1076#1072#1083#1080#1090#1100
        ImageIndex = 1
        ImageMargins.Left = 55
        ImageMargins.Right = -55
        Images = Form1.ImageList1
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = Button4Click
      end
      object Button5: TButton
        AlignWithMargins = True
        Left = 200
        Top = 4
        Width = 175
        Height = 22
        Hint = 'Ctrl + E'
        Align = alLeft
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
        ImageIndex = 2
        ImageMargins.Left = 30
        ImageMargins.Right = -30
        Images = Form1.ImageList1
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = Button5Click
      end
      object Button6: TButton
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 190
        Height = 22
        Hint = 'Ctrl + A'
        Align = alLeft
        Anchors = []
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        ImageIndex = 0
        ImageMargins.Left = 50
        ImageMargins.Right = -50
        Images = Form1.ImageList1
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = Button6Click
        ExplicitTop = 6
      end
    end
    object Panel5: TPanel
      Left = 2
      Top = 128
      Width = 575
      Height = 30
      Align = alBottom
      AutoSize = True
      TabOrder = 1
      object Label3: TLabel
        AlignWithMargins = True
        Left = 4
        Top = 8
        Width = 68
        Height = 18
        Margins.Top = 7
        Align = alLeft
        Alignment = taRightJustify
        Caption = #1055#1088#1077#1076#1087#1088#1080#1103#1090#1080#1077
        ExplicitHeight = 13
      end
      object DBNavigator1: TDBNavigator
        AlignWithMargins = True
        Left = 298
        Top = 4
        Width = 273
        Height = 22
        DataSource = DataSourcePartners
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Align = alRight
        TabOrder = 1
      end
      object Edit1: TEdit
        AlignWithMargins = True
        Left = 78
        Top = 4
        Width = 214
        Height = 22
        Align = alLeft
        TabOrder = 0
        OnChange = Edit1Change
        ExplicitHeight = 21
      end
    end
    object Panel6: TPanel
      Left = 2
      Top = 15
      Width = 575
      Height = 113
      Align = alClient
      Caption = 'Panel3'
      TabOrder = 0
      object DBGrid1: TDBGrid
        Left = 1
        Top = 1
        Width = 573
        Height = 111
        Align = alClient
        BiDiMode = bdLeftToRight
        DataSource = DataSourcePartners
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
        OnCellClick = DBGrid1CellClick
        OnEnter = DBEdit1Change
        Columns = <
          item
            Expanded = False
            FieldName = #1048#1044'_'#1055#1056#1045#1044#1055#1056#1048#1071#1058#1048#1071
            Title.Caption = #1048#1044' '#1055#1088#1077#1076#1087#1088#1080#1103#1090#1080#1103
            Width = 104
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1053#1040#1048#1052#1045#1053#1054#1042#1040#1053#1048#1045
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 122
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1040#1044#1056#1045#1057
            Title.Caption = #1040#1076#1088#1077#1089
            Width = 210
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1048#1053#1053
            Width = 99
            Visible = True
          end>
      end
    end
  end
  object GroupBox2: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 200
    Width = 579
    Height = 190
    Align = alBottom
    BiDiMode = bdLeftToRight
    Caption = #1055#1088#1077#1076#1089#1090#1072#1074#1080#1090#1077#1083#1080' '#1087#1088#1077#1076#1087#1088#1080#1103#1090#1080#1081
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 1
    object Panel2: TPanel
      Left = 2
      Top = 128
      Width = 575
      Height = 30
      Align = alBottom
      AutoSize = True
      TabOrder = 1
      object Label2: TLabel
        AlignWithMargins = True
        Left = 4
        Top = 8
        Width = 79
        Height = 18
        Margins.Top = 7
        Align = alLeft
        Alignment = taRightJustify
        Caption = #1055#1088#1077#1076#1089#1090#1072#1074#1080#1090#1077#1083#1100
        ExplicitHeight = 13
      end
      object Edit2: TEdit
        AlignWithMargins = True
        Left = 89
        Top = 4
        Width = 203
        Height = 22
        Align = alLeft
        TabOrder = 0
        OnChange = Edit2Change
        ExplicitHeight = 21
      end
      object DBNavigator2: TDBNavigator
        AlignWithMargins = True
        Left = 298
        Top = 4
        Width = 273
        Height = 22
        DataSource = DataSourceRepresent
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Align = alRight
        TabOrder = 1
      end
    end
    object Panel1: TPanel
      Left = 2
      Top = 158
      Width = 575
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
        Hint = 'Ctrl + Alt + D'
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
        Hint = 'Ctrl + Alt + E'
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
        Hint = 'Ctrl + Alt + A'
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
        Left = 434
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
    object Panel3: TPanel
      Left = 2
      Top = 15
      Width = 575
      Height = 113
      Align = alClient
      Caption = 'Panel3'
      TabOrder = 0
      object DBGrid2: TDBGrid
        Left = 1
        Top = 1
        Width = 573
        Height = 111
        Align = alClient
        BiDiMode = bdLeftToRight
        DataSource = DataSourceRepresent
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
            FieldName = #1058#1040#1041#1045#1051#1068#1053#1067#1049'_'#1053#1054#1052#1045#1056'_'#1055#1056#1045#1044#1057#1058#1040#1042#1048#1058#1045#1051#1071
            Title.Caption = #1058#1072#1073'. '#1085#1086#1084#1077#1088
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1060#1040#1052#1048#1051#1048#1071
            Title.Caption = #1060#1072#1084#1080#1083#1080#1103
            Width = 125
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1048#1052#1071
            Title.Caption = #1048#1084#1103
            Width = 104
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1054#1058#1063#1045#1057#1058#1042#1054
            Title.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
            Width = 122
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1055#1040#1057#1055#1054#1056#1058#1053#1067#1045'_'#1044#1040#1053#1053#1067#1045
            Title.Caption = #1055#1072#1089#1087#1086#1088#1090#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
            Visible = True
          end>
      end
    end
    object DBEdit2: TDBEdit
      Left = 340
      Top = 119
      Width = 121
      Height = 21
      DataField = #1048#1044'_'#1055#1056#1045#1044#1057#1058#1040#1042#1048#1058#1045#1051#1071
      DataSource = DataSourceRepresent
      TabOrder = 3
      Visible = False
    end
  end
  object DBEdit1: TDBEdit
    Left = 438
    Top = 102
    Width = 121
    Height = 21
    DataField = #1048#1044'_'#1055#1056#1045#1044#1055#1056#1048#1071#1058#1048#1071
    DataSource = DataSourcePartners
    ReadOnly = True
    TabOrder = 2
    Visible = False
    OnChange = DBEdit1Change
  end
  object ADOQueryPartners: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#1055#1088#1077#1076#1087#1088#1080#1103#1090#1080#1077'_'#1087#1072#1088#1090#1085#1077#1088';')
    Left = 344
    Top = 80
  end
  object DataSourcePartners: TDataSource
    DataSet = ADOQueryPartners
    Left = 208
    Top = 80
  end
  object DataSourceRepresent: TDataSource
    DataSet = ADOQueryRepresent
    Left = 211
    Top = 293
  end
  object ADOQueryRepresent: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#1055#1088#1077#1076#1089#1090#1072#1074#1080#1090#1077#1083#1080)
    Left = 347
    Top = 293
  end
  object ADOStoredProc1: TADOStoredProc
    Connection = Form1.ADOConnection1
    DataSource = DataSourceRepresent
    ProcedureName = 'MASS_19.'#1057#1059#1048#1050'_'#1071#1052'.'#1059#1044#1040#1051#1048#1058#1068'_'#1055#1056#1045#1044#1057#1058#1040#1042#1048#1058#1045#1051#1071
    Parameters = <>
    Left = 355
    Top = 343
  end
  object ADOStoredProc2: TADOStoredProc
    Connection = Form1.ADOConnection1
    DataSource = DataSourcePartners
    ProcedureName = 'MASS_19.'#1057#1059#1048#1050'_'#1071#1052'.'#1059#1044#1040#1051#1048#1058#1068'_'#1055#1056#1045#1044#1055#1056#1048#1071#1058#1048#1045
    Parameters = <>
    Left = 469
    Top = 170
  end
  object ActionList1: TActionList
    Left = 51
    Top = 83
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
      OnExecute = Action4Execute
    end
    object Action5: TAction
      Caption = 'Action5'
      ShortCut = 49221
      OnExecute = Action5Execute
    end
    object Action6: TAction
      Caption = 'Action6'
      ShortCut = 49220
      OnExecute = Action6Execute
    end
  end
end
