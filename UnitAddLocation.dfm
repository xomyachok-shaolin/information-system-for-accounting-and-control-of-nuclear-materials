object Form24: TForm24
  Left = 0
  Top = 0
  Caption = #1057#1059#1080#1050' '#1071#1052' - '#1052#1077#1089#1090#1086#1087#1086#1083#1086#1078#1077#1085#1080#1077' - '#1044#1086#1073#1072#1074#1083#1077#1085#1080#1077
  ClientHeight = 184
  ClientWidth = 330
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
    Left = 0
    Top = 0
    Width = 330
    Height = 105
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 80
      Width = 58
      Height = 13
      Caption = #1055#1086#1084#1077#1097#1077#1085#1080#1077
    end
    object Label3: TLabel
      AlignWithMargins = True
      Left = 17
      Top = 48
      Width = 37
      Height = 13
      Caption = #1047#1076#1072#1085#1080#1077
    end
    object Label5: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 17
      Width = 20
      Height = 13
      Caption = #1047#1041#1052
    end
    object ComboBox1: TComboBox
      Left = 90
      Top = 14
      Width = 167
      Height = 21
      TabOrder = 0
      OnChange = ComboBox1Change
    end
    object ComboBox2: TComboBox
      Left = 90
      Top = 45
      Width = 167
      Height = 21
      TabOrder = 1
      OnChange = ComboBox2Change
    end
    object ComboBox3: TComboBox
      Left = 90
      Top = 77
      Width = 167
      Height = 21
      TabOrder = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 150
    Width = 330
    Height = 34
    Align = alBottom
    TabOrder = 2
    object Button1: TButton
      AlignWithMargins = True
      Left = 34
      Top = 4
      Width = 115
      Height = 26
      Hint = 'Ctrl + A'
      Margins.Left = 33
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
    object Button2: TButton
      AlignWithMargins = True
      Left = 177
      Top = 4
      Width = 115
      Height = 26
      Hint = 'Esc'
      Margins.Left = 25
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
  object Panel4: TPanel
    Left = 0
    Top = 105
    Width = 330
    Height = 45
    Align = alClient
    AutoSize = True
    TabOrder = 1
    object Label1: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 12
      Width = 80
      Height = 29
      Margins.Top = 11
      Align = alLeft
      Caption = #1054#1090#1074#1077#1090#1089#1090#1074'. '#1083#1080#1094#1086
      ExplicitHeight = 13
    end
    object DBEdit1: TDBEdit
      AlignWithMargins = True
      Left = 90
      Top = 10
      Width = 198
      Height = 25
      Margins.Top = 9
      Margins.Bottom = 9
      TabStop = False
      Align = alClient
      DataField = #1060#1048#1054' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
      DataSource = DataSourceBoss
      ReadOnly = True
      TabOrder = 1
      ExplicitHeight = 21
    end
    object Button4: TButton
      AlignWithMargins = True
      Left = 294
      Top = 10
      Width = 25
      Height = 25
      Margins.Top = 9
      Margins.Right = 10
      Margins.Bottom = 9
      Align = alRight
      Caption = '...'
      TabOrder = 0
      OnClick = Button4Click
    end
  end
  object DataSourceBoss: TDataSource
    DataSet = ADOQueryBoss
    Left = 112
    Top = 104
  end
  object ADOQueryBoss: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'select * from '#1082#1072#1076#1088#1099)
    Left = 216
    Top = 104
  end
  object ADOStoredProc1: TADOStoredProc
    Connection = Form1.ADOConnection1
    ProcedureName = 'MASS_19.'#1057#1059#1048#1050'_'#1071#1052'.'#1044#1054#1041#1040#1042#1048#1058#1068'_'#1052#1045#1057#1058#1054#1055#1054#1051#1054#1046#1045#1053#1048#1045
    Parameters = <>
    Prepared = True
    Left = 80
    Top = 144
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select distinct "'#1047#1041#1052'" from '#1084#1077#1089#1090#1086#1087#1086#1083#1086#1078' where "'#1047#1041#1052'" is not null')
    Left = 192
  end
  object ADOQuery2: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select distinct "'#1047#1076#1072#1085#1080#1077'" from '#1084#1077#1089#1090#1086#1087#1086#1083#1086#1078' WHERE "'#1047#1076#1072#1085#1080#1077'" is not n' +
        'ull')
    Left = 192
    Top = 32
  end
  object ADOQuery3: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select distinct "'#1055#1086#1084#1077#1097#1077#1085#1080#1077'" from '#1084#1077#1089#1090#1086#1087#1086#1083#1086#1078' WHERE "'#1055#1086#1084#1077#1097#1077#1085#1080#1077'" is' +
        ' not null')
    Left = 192
    Top = 64
  end
  object ActionList1: TActionList
    Left = 152
    Top = 150
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 16449
      OnExecute = Action1Execute
    end
  end
end
