object Form21: TForm21
  Left = 0
  Top = 0
  Caption = #1057#1059#1080#1050' '#1071#1052' - '#1044#1086#1083#1078#1085#1086#1089#1090#1080' - '#1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
  ClientHeight = 152
  ClientWidth = 289
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 289
    Height = 122
    Align = alClient
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 8
      Top = 8
      Width = 273
      Height = 41
      Align = alCustom
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1076#1086#1083#1078#1085#1086#1089#1090#1080
      TabOrder = 0
      object DBEdit1: TDBEdit
        Left = 2
        Top = 15
        Width = 269
        Height = 24
        Align = alClient
        DataField = #1053#1040#1048#1052#1045#1053#1054#1042#1040#1053#1048#1045
        DataSource = DataSource1
        TabOrder = 0
        ExplicitHeight = 21
      end
    end
    object GroupBox2: TGroupBox
      Left = 8
      Top = 53
      Width = 273
      Height = 57
      Caption = #1055#1086#1083#1085#1086#1084#1086#1095#1080#1103
      TabOrder = 1
      object CheckListBox1: TCheckListBox
        Left = 2
        Top = 15
        Width = 269
        Height = 40
        Align = alClient
        ItemHeight = 13
        Items.Strings = (
          #1055#1088#1072#1074#1086' '#1086#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1086#1089#1090#1080' '#1079#1072' '#1085#1072#1082#1083#1072#1076#1085#1099#1077
          #1055#1088#1072#1074#1086' '#1086#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1086#1089#1090#1080' '#1079#1072' '#1087#1086#1084#1077#1097#1077#1085#1080#1077)
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 224
        Top = 0
        Width = 121
        Height = 21
        DataField = #1055#1056#1040#1042#1054'_'#1054#1058#1042#1045#1058#1057#1058#1042'_'#1053#1040#1050#1051#1040#1044#1053#1054#1049
        DataSource = DataSource1
        TabOrder = 1
        Visible = False
      end
      object DBEdit3: TDBEdit
        Left = 224
        Top = 27
        Width = 121
        Height = 21
        DataField = #1055#1056#1040#1042#1054'_'#1054#1058#1042#1045#1058#1057#1058#1042'_'#1055#1054#1052#1045#1065#1045#1053#1048#1071
        DataSource = DataSource1
        TabOrder = 2
        Visible = False
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 122
    Width = 289
    Height = 30
    Align = alBottom
    TabOrder = 1
    object Button1: TButton
      AlignWithMargins = True
      Left = 21
      Top = 4
      Width = 123
      Height = 22
      Hint = 'Ctrl + A'
      Margins.Left = 20
      Align = alLeft
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      ImageIndex = 2
      Images = Form1.ImageList1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      AlignWithMargins = True
      Left = 150
      Top = 4
      Width = 121
      Height = 22
      Hint = 'Esc'
      Align = alLeft
      Cancel = True
      Caption = #1054#1090#1084#1077#1085#1072
      ImageIndex = 4
      ImageMargins.Left = 20
      ImageMargins.Right = -20
      Images = Form1.ImageList1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object ADOStoredProc1: TADOStoredProc
    Connection = Form1.ADOConnection1
    ProcedureName = 'MASS_19.'#1057#1059#1048#1050'_'#1071#1052'.'#1056#1045#1044#1040#1050#1058#1048#1056#1054#1042#1040#1058#1068'_'#1044#1054#1051#1046#1053#1054#1057#1058#1068
    Parameters = <>
    Left = 48
    Top = 112
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 88
    Top = 48
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#1076#1086#1083#1078#1085#1086#1089#1090#1080)
    Left = 184
    Top = 45
  end
  object ActionList1: TActionList
    Left = 96
    Top = 112
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 16449
      OnExecute = Action1Execute
    end
  end
end
