object Form16: TForm16
  Left = 0
  Top = 0
  Align = alCustom
  Caption = #1057#1059#1080#1050' '#1071#1052' - '#1053#1072#1083#1080#1095#1080#1077' '#1071#1052' '#1087#1086' '#1090#1080#1087#1072#1084
  ClientHeight = 339
  ClientWidth = 587
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
  object DBEdit1: TDBEdit
    Left = 305
    Top = 183
    Width = 274
    Height = 21
    Align = alCustom
    DataField = #1048#1044'_'#1058#1048#1055#1040'_'#1052#1040#1058#1045#1056#1048#1040#1051#1040
    DataSource = DataSourceTypesMaterial
    ReadOnly = True
    TabOrder = 1
    Visible = False
    OnChange = DBEdit1Change
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 587
    Height = 156
    Align = alTop
    Caption = 'Panel4'
    TabOrder = 0
    object Panel5: TPanel
      Left = 1
      Top = 125
      Width = 585
      Height = 30
      Align = alBottom
      AutoSize = True
      TabOrder = 1
      object Label3: TLabel
        AlignWithMargins = True
        Left = 4
        Top = 8
        Width = 75
        Height = 18
        Margins.Top = 7
        Align = alLeft
        Alignment = taRightJustify
        Caption = #1058#1080#1087' '#1084#1072#1090#1077#1088#1080#1072#1083#1072
        ExplicitHeight = 13
      end
      object DBNavigator1: TDBNavigator
        AlignWithMargins = True
        Left = 300
        Top = 4
        Width = 281
        Height = 22
        DataSource = DataSourceTypesMaterial
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Align = alClient
        TabOrder = 1
      end
      object Edit1: TEdit
        AlignWithMargins = True
        Left = 85
        Top = 4
        Width = 199
        Height = 22
        Margins.Right = 13
        Align = alLeft
        TabOrder = 0
        OnChange = Edit1Change
        ExplicitHeight = 21
      end
    end
    object Panel6: TPanel
      Left = 1
      Top = 1
      Width = 585
      Height = 124
      Align = alClient
      Caption = 'Panel3'
      TabOrder = 0
      object DBGrid1: TDBGrid
        Left = 1
        Top = 1
        Width = 583
        Height = 122
        Align = alClient
        BiDiMode = bdLeftToRight
        DataSource = DataSourceTypesMaterial
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
            FieldName = #1050#1054#1044'_'#1058#1048#1055#1040'_'#1052#1040#1058#1045#1056#1048#1040#1051#1040
            Title.Caption = #1050#1086#1076' '#1090#1080#1087#1072' '#1084#1072#1090#1077#1088#1080#1072#1083#1072
            Width = 154
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1053#1040#1047#1042#1040#1053#1048#1045'_'#1052#1040#1058#1045#1056#1048#1040#1051#1040
            Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1084#1072#1090#1077#1088#1080#1072#1083#1072
            Width = 204
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1042#1045#1057'_'#1050#1040#1046#1044#1054#1043#1054'_'#1069#1051#1045#1052#1045#1053#1058#1040
            Title.Caption = #1042#1077#1089
            Width = 189
            Visible = True
          end>
      end
    end
  end
  object Panel7: TPanel
    Left = 0
    Top = 159
    Width = 587
    Height = 180
    Align = alBottom
    Caption = 'Panel7'
    TabOrder = 2
    object Panel1: TPanel
      Left = 1
      Top = 151
      Width = 585
      Height = 28
      Align = alBottom
      AutoSize = True
      TabOrder = 2
      object Button2: TButton
        AlignWithMargins = True
        Left = 177
        Top = 4
        Width = 137
        Height = 20
        Hint = 'Ctrl + M'
        Margins.Left = 33
        Align = alLeft
        Caption = #1055#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077
        ImageIndex = 6
        ImageMargins.Left = 15
        ImageMargins.Right = -15
        Images = Form1.ImageList1
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Visible = False
        OnClick = Button2Click
      end
      object Button1: TButton
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 137
        Height = 20
        Hint = 'Ctrl + E'
        Align = alLeft
        Caption = #1054#1090#1087#1088#1072#1074#1082#1072
        ImageIndex = 5
        ImageMargins.Left = 25
        ImageMargins.Right = -25
        Images = Form1.ImageList1
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        Visible = False
        OnClick = Button1Click
        ExplicitTop = 6
      end
      object Button7: TButton
        AlignWithMargins = True
        Left = 445
        Top = 4
        Width = 136
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
        TabOrder = 2
        OnClick = Button7Click
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 120
      Width = 585
      Height = 31
      Align = alBottom
      AutoSize = True
      TabOrder = 1
      object Label2: TLabel
        AlignWithMargins = True
        Left = 4
        Top = 8
        Width = 106
        Height = 19
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
        Width = 170
        Height = 23
        Margins.Right = 13
        Align = alLeft
        TabOrder = 0
        OnChange = Edit2Change
        ExplicitHeight = 21
      end
      object DBNavigator2: TDBNavigator
        AlignWithMargins = True
        Left = 302
        Top = 4
        Width = 279
        Height = 23
        DataSource = DataSourceAU
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Align = alClient
        TabOrder = 1
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 585
      Height = 119
      Align = alClient
      Caption = 'Panel3'
      TabOrder = 0
      object DBGrid2: TDBGrid
        Left = 1
        Top = 1
        Width = 583
        Height = 117
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
            FieldName = #1057#1077#1088#1080#1081#1085#1099#1081' '#8470' '#1059#1045
            Title.Caption = #8470' '#1059#1045
            Width = 44
            Visible = True
          end
          item
            Expanded = False
            FieldName = #8470' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
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
            Width = 83
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1042#1077#1089' '#1085#1077#1090#1090#1086
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
            Width = 61
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1048#1085#1074'. '#8470' '#1074#1077#1089#1086#1074
            Width = 76
            Visible = True
          end>
      end
    end
    object DBEdit2: TDBEdit
      Left = 400
      Top = 32
      Width = 121
      Height = 21
      DataField = #1048#1044'_'#1059#1045
      DataSource = DataSourceAU
      TabOrder = 3
      Visible = False
    end
  end
  object ADOQueryTypesMaterial: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#1058#1080#1087'_'#1084#1072#1090#1077#1088#1080#1072#1083#1072';')
    Left = 344
    Top = 80
  end
  object DataSourceTypesMaterial: TDataSource
    DataSet = ADOQueryTypesMaterial
    Left = 208
    Top = 80
  end
  object DataSourceAU: TDataSource
    DataSet = ADOQueryAU
    Left = 235
    Top = 181
  end
  object ADOQueryAU: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#1058#1052'_'#1059#1045)
    Left = 347
    Top = 181
  end
  object ADOStoredProc1: TADOStoredProc
    Connection = Form1.ADOConnection1
    ProcedureName = 'MASS_19.'#1057#1059#1048#1050'_'#1071#1052'.'#1054#1058#1055#1056#1040#1042#1048#1058#1068'_'#1059#1063#1045#1058#1053#1059#1070'_'#1045#1044#1048#1053#1048#1062#1059
    Parameters = <>
    Left = 56
    Top = 279
  end
  object ActionList1: TActionList
    Left = 152
    Top = 191
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 16453
      OnExecute = Action1Execute
    end
    object Action2: TAction
      Caption = 'Action2'
      ShortCut = 16461
      OnExecute = Action2Execute
    end
  end
end
