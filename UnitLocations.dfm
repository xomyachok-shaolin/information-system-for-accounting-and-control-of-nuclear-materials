object Form17: TForm17
  Left = 0
  Top = 0
  Align = alCustom
  Caption = #1057#1059#1080#1050' '#1071#1052' - '#1052#1077#1089#1090#1086#1087#1086#1083#1086#1078#1077#1085#1080#1077
  ClientHeight = 348
  ClientWidth = 576
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
  object GroupBox2: TGroupBox
    AlignWithMargins = True
    Left = 0
    Top = 186
    Width = 576
    Height = 162
    Margins.Left = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alClient
    BiDiMode = bdLeftToRight
    Caption = #1050#1088#1080#1090#1080#1095#1077#1089#1082#1080#1077' '#1087#1088#1077#1076#1077#1083#1099
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 3
    ExplicitTop = 190
    ExplicitHeight = 158
    object Panel2: TPanel
      Left = 2
      Top = 130
      Width = 572
      Height = 30
      Align = alBottom
      AutoSize = True
      TabOrder = 2
      ExplicitTop = 126
      object Panel7: TPanel
        Left = 1
        Top = 1
        Width = 401
        Height = 28
        Align = alClient
        TabOrder = 0
        object Label2: TLabel
          AlignWithMargins = True
          Left = 4
          Top = 8
          Width = 63
          Height = 16
          Margins.Top = 7
          Align = alLeft
          Alignment = taRightJustify
          Caption = #1058#1080#1087' '#1080#1079#1076#1077#1083#1080#1103
          ExplicitHeight = 13
        end
        object DBNavigator2: TDBNavigator
          AlignWithMargins = True
          Left = 201
          Top = 4
          Width = 194
          Height = 20
          DataSource = DataSourceLimit
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Align = alLeft
          TabOrder = 1
        end
        object Edit2: TEdit
          AlignWithMargins = True
          Left = 73
          Top = 4
          Width = 122
          Height = 20
          Align = alLeft
          TabOrder = 0
          OnChange = Edit2Change
          ExplicitHeight = 21
        end
      end
      object Panel8: TPanel
        Left = 402
        Top = 1
        Width = 169
        Height = 28
        Align = alRight
        TabOrder = 1
        object Button7: TButton
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 161
          Height = 20
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
          TabOrder = 0
          OnClick = Button7Click
        end
      end
    end
    object Panel1: TPanel
      Left = 404
      Top = 15
      Width = 170
      Height = 115
      HelpContext = 162
      Align = alRight
      AutoSize = True
      TabOrder = 1
      ExplicitHeight = 111
      object Button3: TButton
        AlignWithMargins = True
        Left = 4
        Top = 74
        Width = 162
        Height = 25
        Hint = 'Ctrl + Alt + D'
        Align = alTop
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
        Left = 4
        Top = 41
        Width = 162
        Height = 25
        Hint = 'Ctrl + Alt + E'
        Margins.Top = 5
        Margins.Bottom = 5
        Align = alTop
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
        Top = 6
        Width = 162
        Height = 25
        Hint = 'Ctrl + Alt + A'
        HelpContext = 25
        Margins.Top = 5
        Margins.Bottom = 5
        Align = alTop
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
    end
    object Panel3: TPanel
      Left = 2
      Top = 15
      Width = 402
      Height = 115
      Align = alClient
      Caption = 'Panel3'
      TabOrder = 0
      ExplicitHeight = 111
      object DBGrid2: TDBGrid
        Left = 1
        Top = 1
        Width = 400
        Height = 113
        Align = alClient
        BiDiMode = bdLeftToRight
        DataSource = DataSourceLimit
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
            Width = 157
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1042#1077#1083#1080#1095#1080#1085#1072' '#1082#1088#1080#1090'. '#1087#1088#1077#1076#1077#1083#1072', '#1075
            Width = 209
            Visible = True
          end>
      end
    end
    object DBEdit2: TDBEdit
      Left = 261
      Top = 47
      Width = 121
      Height = 21
      DataField = #1048#1044'_'#1050#1056#1048#1058'_'#1055#1056#1045#1044#1045#1051#1054#1042
      DataSource = DataSourceLimit
      TabOrder = 3
      Visible = False
    end
    object DBEdit1: TDBEdit
      Left = 452
      Top = 1
      Width = 121
      Height = 21
      Align = alCustom
      DataField = #1048#1044'_'#1055#1054#1052#1045#1065#1045#1065#1045#1053#1048#1071
      DataSource = DataSourceLocation
      ReadOnly = True
      TabOrder = 4
      Visible = False
      OnChange = DBEdit1Change
    end
    object DBEdit3: TDBEdit
      Left = 112
      Top = 48
      Width = 121
      Height = 21
      DataField = #1048#1044'_'#1058#1048#1055#1040'_'#1052#1040#1058#1045#1056#1048#1040#1051#1040
      DataSource = DataSourceLimit
      TabOrder = 5
      Visible = False
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 155
    Width = 576
    Height = 28
    Align = alTop
    AutoSize = True
    TabOrder = 2
    object Button4: TButton
      AlignWithMargins = True
      Left = 290
      Top = 4
      Width = 137
      Height = 20
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
      OnClick = Button4Click
    end
    object Button5: TButton
      AlignWithMargins = True
      Left = 147
      Top = 4
      Width = 137
      Height = 20
      Hint = 'Ctrl + E'
      Align = alLeft
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      ImageIndex = 2
      ImageMargins.Left = 10
      ImageMargins.Right = -10
      Images = Form1.ImageList1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = Button5Click
      ExplicitTop = 2
    end
    object Button6: TButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 137
      Height = 20
      Hint = 'Ctrl + A'
      Align = alLeft
      Anchors = []
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      ImageIndex = 0
      ImageMargins.Left = 25
      ImageMargins.Right = -25
      Images = Form1.ImageList1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = Button6Click
    end
    object Button8: TButton
      AlignWithMargins = True
      Left = 435
      Top = 4
      Width = 137
      Height = 20
      Hint = 'Ctrl + S'
      Align = alRight
      Caption = #1042#1099#1073#1088#1072#1090#1100
      Enabled = False
      ImageIndex = 7
      ImageMargins.Left = 30
      ImageMargins.Top = 3
      ImageMargins.Right = -30
      ImageMargins.Bottom = 5
      Images = Form1.ImageList1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      Visible = False
      OnClick = Button8Click
      ExplicitLeft = 433
      ExplicitTop = 5
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 124
    Width = 576
    Height = 31
    Align = alTop
    AutoSize = True
    TabOrder = 1
    object Label3: TLabel
      AlignWithMargins = True
      Left = 142
      Top = 9
      Width = 37
      Height = 21
      HelpContext = 25
      Margins.Left = 10
      Margins.Top = 8
      Margins.Bottom = 0
      Align = alLeft
      Alignment = taCenter
      Caption = #1047#1076#1072#1085#1080#1077
      ExplicitHeight = 13
    end
    object Label4: TLabel
      AlignWithMargins = True
      Left = 8
      Top = 8
      Width = 20
      Height = 19
      Margins.Left = 7
      Margins.Top = 7
      Align = alLeft
      Alignment = taCenter
      Caption = #1047#1041#1052
      ExplicitHeight = 13
    end
    object DBNavigator1: TDBNavigator
      AlignWithMargins = True
      Left = 307
      Top = 4
      Width = 280
      Height = 23
      Margins.Left = 20
      DataSource = DataSourceLocation
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alLeft
      TabOrder = 2
    end
    object Edit1: TEdit
      AlignWithMargins = True
      Left = 185
      Top = 4
      Width = 99
      Height = 23
      Align = alLeft
      TabOrder = 1
      OnChange = Edit1Change
      ExplicitHeight = 21
    end
    object Edit3: TEdit
      AlignWithMargins = True
      Left = 34
      Top = 4
      Width = 95
      Height = 23
      Align = alLeft
      TabOrder = 0
      OnChange = Edit3Change
      ExplicitHeight = 21
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 0
    Width = 576
    Height = 124
    Align = alTop
    Caption = 'Panel3'
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 574
      Height = 123
      Align = alTop
      BiDiMode = bdLeftToRight
      DataSource = DataSourceLocation
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
          FieldName = #1047#1041#1052
          Width = 83
          Visible = True
        end
        item
          Expanded = False
          FieldName = #1047#1076#1072#1085#1080#1077
          Width = 99
          Visible = True
        end
        item
          Expanded = False
          FieldName = #1055#1086#1084#1077#1097#1077#1085#1080#1077
          Width = 97
          Visible = True
        end
        item
          Expanded = False
          FieldName = #1060#1048#1054' '#1086#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1086#1075#1086' '#1083#1080#1094#1072
          Width = 259
          Visible = True
        end>
    end
  end
  object ADOQueryLocation: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#1084#1077#1089#1090#1086#1087#1086#1083#1086#1078' where '#1048#1044'_'#1055#1054#1052#1045#1065#1045#1065#1045#1053#1048#1071' is not null')
    Left = 344
    Top = 64
  end
  object DataSourceLocation: TDataSource
    DataSet = ADOQueryLocation
    Left = 208
    Top = 64
  end
  object DataSourceLimit: TDataSource
    DataSet = ADOQueryLimit
    Left = 115
    Top = 261
  end
  object ADOQueryLimit: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#1082#1088#1080#1090'_'#1087#1088#1077#1076)
    Left = 227
    Top = 261
  end
  object ADOStoredProc1: TADOStoredProc
    Connection = Form1.ADOConnection1
    DataSource = DataSourceLimit
    ProcedureName = 'MASS_19.'#1057#1059#1048#1050'_'#1071#1052'.'#1059#1044#1040#1051#1048#1058#1068'_'#1055#1056#1045#1044#1045#1051
    Parameters = <>
    Left = 483
    Top = 271
  end
  object ADOStoredProc2: TADOStoredProc
    Connection = Form1.ADOConnection1
    ProcedureName = 'MASS_19.'#1057#1059#1048#1050'_'#1071#1052'.'#1059#1044#1040#1051#1048#1058#1068'_'#1052#1045#1057#1058#1054#1055#1054#1051#1054#1046#1045#1053#1048#1045
    Parameters = <>
    Left = 352
    Top = 155
  end
  object ActionList1: TActionList
    Left = 416
    Top = 178
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
    object Action5: TAction
      Caption = 'Action5'
      ShortCut = 49217
      OnExecute = Action5Execute
    end
    object Action6: TAction
      Caption = 'Action6'
      ShortCut = 49221
      OnExecute = Action6Execute
    end
    object Action7: TAction
      Caption = 'Action7'
      ShortCut = 49220
      OnExecute = Action7Execute
    end
  end
end
