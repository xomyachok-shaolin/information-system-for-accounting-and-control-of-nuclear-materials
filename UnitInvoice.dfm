object Form28: TForm28
  Left = 0
  Top = 0
  Align = alCustom
  Caption = #1057#1059#1080#1050' '#1071#1052' - '#1053#1072#1082#1083#1072#1076#1085#1099#1077
  ClientHeight = 467
  ClientWidth = 659
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
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 659
    Height = 156
    Align = alTop
    TabOrder = 0
    object Panel6: TPanel
      Left = 1
      Top = 1
      Width = 657
      Height = 154
      Align = alClient
      Caption = 'Panel3'
      TabOrder = 0
      object DBGrid1: TDBGrid
        Left = 1
        Top = 1
        Width = 655
        Height = 152
        Align = alClient
        BiDiMode = bdLeftToRight
        DataSource = DataSourceInvoice
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
            FieldName = #8470' '#1053#1072#1082#1083#1072#1076#1085#1086#1081
            Width = 83
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1058#1080#1087' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
            Width = 97
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1044#1072#1090#1072' '#1089#1086#1089#1090#1072#1074#1083#1077#1085#1080#1103
            Width = 145
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1060#1048#1054' '#1086#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1086#1075#1086' '#1083#1080#1094#1072
            Visible = True
          end>
      end
      object DBEdit1: TDBEdit
        Left = 496
        Top = 96
        Width = 121
        Height = 21
        DataField = #1048#1044'_'#1053#1040#1050#1051#1040#1044#1053#1054#1049
        DataSource = DataSourceInvoice
        TabOrder = 1
        Visible = False
        OnChange = DBEdit1Change
      end
    end
  end
  object Panel7: TPanel
    Left = 0
    Top = 287
    Width = 659
    Height = 180
    Align = alBottom
    Caption = 'Panel7'
    TabOrder = 3
    object Panel1: TPanel
      Left = 1
      Top = 146
      Width = 657
      Height = 33
      Align = alBottom
      AutoSize = True
      TabOrder = 1
      object Button7: TButton
        AlignWithMargins = True
        Left = 517
        Top = 4
        Width = 136
        Height = 25
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
        TabOrder = 1
        OnClick = Button7Click
      end
      object DBNavigator2: TDBNavigator
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 341
        Height = 25
        DataSource = DataSourceAU
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Align = alLeft
        TabOrder = 0
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 657
      Height = 145
      Align = alClient
      Caption = 'Panel3'
      TabOrder = 0
      object DBGrid2: TDBGrid
        Left = 1
        Top = 1
        Width = 655
        Height = 143
        Align = alClient
        BiDiMode = bdLeftToRight
        DataSource = DataSourceAU
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
            FieldName = #1058#1080#1087' '#1084#1072#1090#1077#1088#1080#1072#1083#1072
            Width = 95
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1057#1077#1088#1080#1081#1085#1099#1081' '#8470' '#1059#1045
            Title.Caption = #8470' '#1091#1095#1077#1090'. '#1077#1076'.'
            Width = 76
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1050#1086#1085#1090#1077#1081#1085#1077#1088
            Width = 63
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1060#1086#1088#1084#1072
            Width = 103
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
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1048#1085#1074'. '#8470' '#1074#1077#1089#1086#1074
            Visible = True
          end>
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 156
    Width = 289
    Height = 131
    Align = alLeft
    TabOrder = 1
    object Panel5: TPanel
      Left = 1
      Top = 100
      Width = 287
      Height = 30
      Align = alBottom
      AutoSize = True
      TabOrder = 0
      object Label3: TLabel
        AlignWithMargins = True
        Left = 4
        Top = 8
        Width = 56
        Height = 18
        Margins.Top = 7
        Align = alLeft
        Alignment = taRightJustify
        Caption = #1053#1072#1082#1083#1072#1076#1085#1072#1103
        ExplicitHeight = 13
      end
      object DBNavigator1: TDBNavigator
        AlignWithMargins = True
        Left = 137
        Top = 4
        Width = 146
        Height = 22
        DataSource = DataSourceInvoice
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Align = alClient
        TabOrder = 1
      end
      object Edit1: TEdit
        AlignWithMargins = True
        Left = 66
        Top = 4
        Width = 55
        Height = 22
        Margins.Right = 13
        Align = alLeft
        TabOrder = 0
        OnChange = Edit1Change
        ExplicitHeight = 21
      end
    end
    object Panel8: TPanel
      Left = 1
      Top = 1
      Width = 287
      Height = 99
      Align = alClient
      TabOrder = 1
      object DBText1: TDBText
        Left = 10
        Top = 32
        Width = 65
        Height = 38
        DataField = #1055#1088#1077#1076#1087#1088#1080#1103#1090#1080#1077
        DataSource = DataSourceInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBText2: TDBText
        Left = 140
        Top = 32
        Width = 65
        Height = 38
        DataField = #1055#1088#1077#1076#1089#1090#1072#1074#1080#1090#1077#1083#1100
        DataSource = DataSourceInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object StaticText2: TStaticText
        Left = 10
        Top = 9
        Width = 72
        Height = 17
        Caption = #1055#1088#1077#1076#1087#1088#1080#1103#1090#1080#1077
        TabOrder = 0
      end
      object StaticText1: TStaticText
        Left = 140
        Top = 9
        Width = 83
        Height = 17
        Caption = #1055#1088#1077#1076#1089#1090#1072#1074#1080#1090#1077#1083#1100
        TabOrder = 1
      end
    end
  end
  object Panel9: TPanel
    Left = 289
    Top = 156
    Width = 370
    Height = 131
    Align = alClient
    TabOrder = 2
    object Panel11: TPanel
      Left = 1
      Top = 1
      Width = 368
      Height = 99
      Align = alClient
      TabOrder = 1
      object DBText3: TDBText
        Left = 15
        Top = 32
        Width = 65
        Height = 38
        DataField = #1053#1072#1095#1080#1085#1072#1102#1097#1080#1081' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077
        DataSource = DataSourceInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBText4: TDBText
        Left = 182
        Top = 32
        Width = 65
        Height = 38
        DataField = #1047#1072#1082#1072#1085#1095#1080#1074#1072#1102#1097#1080#1081' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077
        DataSource = DataSourceInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object StaticText3: TStaticText
        Left = 11
        Top = 9
        Width = 143
        Height = 17
        Caption = #1053#1072#1095#1080#1085#1072#1102#1097#1080#1081' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077
        TabOrder = 0
      end
      object StaticText4: TStaticText
        Left = 180
        Top = 9
        Width = 160
        Height = 17
        Caption = #1047#1072#1082#1072#1085#1095#1080#1074#1072#1102#1097#1080#1081' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077
        TabOrder = 1
      end
    end
    object Panel12: TPanel
      Left = 1
      Top = 100
      Width = 368
      Height = 30
      Align = alBottom
      AutoSize = True
      TabOrder = 0
      object Button3: TButton
        AlignWithMargins = True
        Left = 246
        Top = 4
        Width = 115
        Height = 22
        Hint = 'Ctrl + D'
        Align = alLeft
        Caption = #1059#1076#1072#1083#1080#1090#1100
        ImageIndex = 1
        ImageMargins.Left = 20
        ImageMargins.Right = -20
        Images = Form1.ImageList1
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
      object Button2: TButton
        AlignWithMargins = True
        Left = 125
        Top = 4
        Width = 115
        Height = 22
        Hint = 'Ctrl + E'
        Align = alLeft
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
        DisabledImageIndex = 5
        ImageIndex = 2
        ImageMargins.Left = 3
        ImageMargins.Right = -3
        Images = Form1.ImageList1
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      object Button1: TButton
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 115
        Height = 22
        Hint = 'Ctrl + A'
        Align = alLeft
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        ImageIndex = 0
        ImageMargins.Left = 15
        ImageMargins.Right = -15
        Images = Form1.ImageList1
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = Button1Click
      end
    end
  end
  object ADOQueryInvoice: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#1085#1072#1082#1083#1072#1076' where '#1080#1076'_'#1085#1072#1082#1083#1072#1076#1085#1086#1081' is not null')
    Left = 344
    Top = 80
  end
  object DataSourceInvoice: TDataSource
    DataSet = ADOQueryInvoice
    Left = 208
    Top = 80
  end
  object DataSourceAU: TDataSource
    DataSet = ADOQueryAU
    Left = 595
    Top = 309
  end
  object ADOQueryAU: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#1058#1052'_'#1059#1045)
    Left = 595
    Top = 365
  end
  object ActionList1: TActionList
    Left = 449
    Top = 196
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 16449
      OnExecute = Action1Execute
    end
    object Action2: TAction
      Caption = 'Action2'
      ShortCut = 16453
    end
    object Action3: TAction
      Caption = 'Action3'
      ShortCut = 16452
      OnExecute = Action3Execute
    end
  end
end
