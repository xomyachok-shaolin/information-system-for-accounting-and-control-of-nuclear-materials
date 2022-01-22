object Form18: TForm18
  Left = 0
  Top = 0
  Caption = #1057#1059#1080#1050' '#1071#1052' - '#1044#1086#1083#1078#1085#1086#1089#1090#1100
  ClientHeight = 131
  ClientWidth = 569
  Color = clBtnFace
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
    Left = 408
    Top = 0
    Width = 161
    Height = 101
    Align = alRight
    AutoSize = True
    TabOrder = 1
    object Button3: TButton
      AlignWithMargins = True
      Left = 4
      Top = 66
      Width = 153
      Height = 25
      Hint = 'Ctrl + D'
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
      Top = 35
      Width = 153
      Height = 25
      Hint = 'Ctrl + E'
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
      Top = 4
      Width = 153
      Height = 25
      Hint = 'Ctrl + A'
      HelpContext = 25
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
    Left = 0
    Top = 0
    Width = 408
    Height = 101
    Align = alClient
    TabOrder = 0
    object DBGrid2: TDBGrid
      Left = 1
      Top = 1
      Width = 406
      Height = 99
      Align = alClient
      BiDiMode = bdLeftToRight
      DataSource = DataSourcePosts
      DrawingStyle = gdsGradient
      FixedColor = clMenu
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
      OnColExit = DBGrid2ColExit
      OnDrawColumnCell = DBGrid2DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = #1053#1040#1048#1052#1045#1053#1054#1042#1040#1053#1048#1045
          Title.Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
          Width = 187
          Visible = True
        end
        item
          Color = clMenu
          Expanded = False
          FieldName = #1055#1056#1040#1042#1054'_'#1054#1058#1042#1045#1058#1057#1058#1042'_'#1053#1040#1050#1051#1040#1044#1053#1054#1049
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMenuBar
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Caption = #1053#1072#1082#1083#1072#1076#1085#1099#1077
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = #1055#1056#1040#1042#1054'_'#1054#1058#1042#1045#1058#1057#1058#1042'_'#1055#1054#1052#1045#1065#1045#1053#1048#1071
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMenuBar
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Caption = #1055#1086#1084#1077#1097#1077#1085#1080#1103
          Width = 90
          Visible = True
        end>
    end
    object DBEdit1: TDBEdit
      Left = 260
      Top = 37
      Width = 126
      Height = 21
      Align = alCustom
      DataField = #1048#1044'_'#1044#1054#1051#1046#1053#1054#1057#1058#1048
      DataSource = DataSourcePosts
      ReadOnly = True
      TabOrder = 1
      Visible = False
    end
    object DBCheckBox1: TDBCheckBox
      Left = 220
      Top = 20
      Width = 17
      Height = 17
      DataField = #1055#1056#1040#1042#1054'_'#1054#1058#1042#1045#1058#1057#1058#1042'_'#1053#1040#1050#1051#1040#1044#1053#1054#1049
      DataSource = DataSourcePosts
      TabOrder = 2
      ValueChecked = 'y'
      ValueUnchecked = 'n'
      Visible = False
    end
    object DBCheckBox2: TDBCheckBox
      Left = 316
      Top = 20
      Width = 17
      Height = 17
      DataField = #1055#1056#1040#1042#1054'_'#1054#1058#1042#1045#1058#1057#1058#1042'_'#1055#1054#1052#1045#1065#1045#1053#1048#1071
      DataSource = DataSourcePosts
      TabOrder = 3
      ValueChecked = 'y'
      ValueUnchecked = 'n'
      Visible = False
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 101
    Width = 569
    Height = 30
    Align = alBottom
    TabOrder = 2
    object Panel5: TPanel
      Left = 408
      Top = 1
      Width = 160
      Height = 28
      Align = alRight
      TabOrder = 1
      object Button7: TButton
        AlignWithMargins = True
        Left = 4
        Top = 1
        Width = 152
        Height = 23
        Hint = 'Esc'
        Align = alBottom
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
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 407
      Height = 28
      Align = alClient
      AutoSize = True
      TabOrder = 0
      object Label2: TLabel
        AlignWithMargins = True
        Left = 4
        Top = 8
        Width = 57
        Height = 16
        Margins.Top = 7
        Align = alLeft
        Alignment = taRightJustify
        Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
        ExplicitHeight = 13
      end
      object Edit2: TEdit
        AlignWithMargins = True
        Left = 67
        Top = 4
        Width = 122
        Height = 20
        Align = alLeft
        TabOrder = 0
        OnChange = Edit2Change
        ExplicitHeight = 21
      end
      object DBNavigator2: TDBNavigator
        AlignWithMargins = True
        Left = 195
        Top = 4
        Width = 179
        Height = 20
        DataSource = DataSourcePosts
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Align = alLeft
        TabOrder = 1
      end
    end
  end
  object DataSourcePosts: TDataSource
    DataSet = ADOQueryPosts
    Left = 123
    Top = 68
  end
  object ADOQueryPosts: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#1076#1086#1083#1078#1085#1086#1089#1090#1080)
    Left = 235
    Top = 68
  end
  object ADOStoredProc1: TADOStoredProc
    Connection = Form1.ADOConnection1
    DataSource = DataSourcePosts
    ProcedureName = 'MASS_19.'#1057#1059#1048#1050'_'#1071#1052'.'#1059#1044#1040#1051#1048#1058#1068'_'#1044#1054#1051#1046#1053#1054#1057#1058#1068
    Parameters = <>
    Left = 475
    Top = 68
  end
  object ActionList1: TActionList
    Left = 328
    Top = 64
    object AddInsert: TAction
      ShortCut = 45
      OnExecute = AddInsertExecute
    end
  end
end
