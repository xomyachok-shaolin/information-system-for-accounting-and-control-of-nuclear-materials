object Form29: TForm29
  Left = 0
  Top = 0
  Caption = #1057#1059#1080#1050' '#1071#1052' - '#1053#1072#1082#1083#1072#1076#1085#1072#1103' - '#1044#1086#1073#1072#1074#1083#1077#1085#1080#1077
  ClientHeight = 397
  ClientWidth = 375
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
    Width = 375
    Height = 105
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 78
      Width = 26
      Height = 13
      Caption = #1044#1072#1090#1072
    end
    object Label2: TLabel
      AlignWithMargins = True
      Left = 228
      Top = 58
      Width = 18
      Height = 13
      Caption = #1058#1080#1087
    end
    object Label12: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 42
      Width = 71
      Height = 13
      Caption = #8470' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
    end
    object Edit7: TEdit
      Left = 106
      Top = 39
      Width = 103
      Height = 21
      TabOrder = 0
    end
    object StaticText5: TStaticText
      AlignWithMargins = True
      Left = 10
      Top = 10
      Width = 361
      Height = 17
      Margins.Left = 9
      Margins.Top = 9
      Align = alTop
      Caption = #1054#1089#1085#1086#1074#1085#1099#1077' '#1088#1077#1082#1074#1080#1079#1080#1090#1099
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      TabOrder = 2
    end
    object DateTimePicker2: TDateTimePicker
      Left = 82
      Top = 75
      Width = 127
      Height = 21
      Date = 44011.000000000000000000
      Time = 44011.000000000000000000
      DateFormat = dfLong
      TabOrder = 3
    end
    object ComboBox2: TComboBox
      Left = 264
      Top = 55
      Width = 97
      Height = 21
      TabOrder = 1
      OnChange = ComboBox2Change
      OnKeyPress = ComboBox2KeyPress
      Items.Strings = (
        #1054#1090#1087#1088#1072#1074#1082#1072
        #1055#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077
        #1055#1086#1089#1090#1091#1087#1083#1077#1085#1080#1077)
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 367
    Width = 375
    Height = 30
    Align = alBottom
    TabOrder = 3
    object Button1: TButton
      AlignWithMargins = True
      Left = 51
      Top = 4
      Width = 125
      Height = 22
      Hint = 'Ctrl + A'
      Margins.Left = 50
      Align = alLeft
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      ImageIndex = 0
      ImageMargins.Left = 5
      ImageMargins.Right = -5
      Images = Form1.ImageList1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      AlignWithMargins = True
      Left = 204
      Top = 4
      Width = 123
      Height = 22
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
  object Panel3: TPanel
    Left = 0
    Top = 210
    Width = 375
    Height = 157
    Align = alClient
    TabOrder = 2
    object Label7: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 48
      Width = 97
      Height = 13
      Caption = #1057#1072#1085#1082#1094#1080#1086#1085#1080#1088#1091#1102#1097#1080#1081
    end
    object Label5: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 88
      Width = 119
      Height = 13
      Caption = #1053#1072#1095#1080#1085#1072#1102#1097#1080#1081' '#1087#1077#1088#1077#1084#1077#1097'.'
    end
    object Label6: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 128
      Width = 136
      Height = 13
      Caption = #1047#1072#1082#1072#1085#1095#1080#1074#1072#1102#1097#1080#1081' '#1087#1077#1088#1077#1084#1077#1097'.'
    end
    object StaticText2: TStaticText
      AlignWithMargins = True
      Left = 11
      Top = 11
      Width = 360
      Height = 17
      Margins.Left = 10
      Margins.Top = 10
      Align = alTop
      Caption = #1054#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1099#1077' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1080
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      TabOrder = 4
    end
    object Button3: TButton
      Left = 335
      Top = 45
      Width = 26
      Height = 25
      Caption = '...'
      TabOrder = 0
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 335
      Top = 83
      Width = 26
      Height = 25
      Caption = '...'
      TabOrder = 1
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 335
      Top = 123
      Width = 26
      Height = 25
      Caption = '...'
      TabOrder = 2
      OnClick = Button5Click
    end
    object DBEdit1: TDBEdit
      Left = 161
      Top = 47
      Width = 168
      Height = 21
      TabStop = False
      DataField = #1060#1048#1054' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
      DataSource = DataSourceBoss
      TabOrder = 3
    end
    object DBEdit2: TDBEdit
      Left = 161
      Top = 85
      Width = 168
      Height = 21
      TabStop = False
      DataField = #1060#1048#1054' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
      DataSource = DataSourceStartEmp
      TabOrder = 5
    end
    object DBEdit3: TDBEdit
      Left = 161
      Top = 125
      Width = 168
      Height = 21
      TabStop = False
      DataField = #1060#1048#1054' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
      DataSource = DataSourceFinEmp
      TabOrder = 6
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 105
    Width = 375
    Height = 105
    Align = alTop
    TabOrder = 1
    object Label3: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 50
      Width = 68
      Height = 13
      Caption = #1055#1088#1077#1076#1087#1088#1080#1103#1090#1080#1077
    end
    object Label4: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 82
      Width = 79
      Height = 13
      Caption = #1055#1088#1077#1076#1089#1090#1072#1074#1080#1090#1077#1083#1100
    end
    object StaticText1: TStaticText
      AlignWithMargins = True
      Left = 11
      Top = 11
      Width = 360
      Height = 17
      Margins.Left = 10
      Margins.Top = 10
      Align = alTop
      Caption = #1055#1072#1088#1090#1085#1077#1088#1099
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      TabOrder = 2
    end
    object ComboBox1: TComboBox
      Left = 106
      Top = 48
      Width = 223
      Height = 21
      TabOrder = 0
      OnChange = ComboBox1Change
      OnKeyPress = ComboBox1KeyPress
    end
    object ComboBox3: TComboBox
      Left = 106
      Top = 78
      Width = 223
      Height = 21
      TabOrder = 1
      OnKeyPress = ComboBox3KeyPress
    end
  end
  object DataSourceBoss: TDataSource
    DataSet = ADOQueryBoss
    Left = 272
    Top = 240
  end
  object ADOQueryBoss: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'select * from '#1082#1072#1076#1088#1099)
    Left = 176
    Top = 240
  end
  object ADOStoredProc1: TADOStoredProc
    Connection = Form1.ADOConnection1
    ProcedureName = 'MASS_19.'#1057#1059#1048#1050'_'#1071#1052'.'#1044#1054#1041#1040#1042#1048#1058#1068'_'#1053#1040#1050#1051#1040#1044#1053#1059#1070
    Parameters = <>
    Prepared = True
    Left = 96
    Top = 344
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#1085#1072#1082#1083#1072#1076)
    Left = 152
    Top = 129
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 232
    Top = 129
  end
  object ADOQuery2: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#1087#1088#1077#1076#1089#1090#1072#1074#1080#1090#1077#1083#1080)
    Left = 152
    Top = 169
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 232
    Top = 169
  end
  object DataSourceStartEmp: TDataSource
    DataSet = ADOQueryStartEmp
    Left = 272
    Top = 272
  end
  object ADOQueryStartEmp: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'select * from '#1082#1072#1076#1088#1099)
    Left = 176
    Top = 272
  end
  object DataSourceFinEmp: TDataSource
    DataSet = ADOQueryFinEmp
    Left = 272
    Top = 312
  end
  object ADOQueryFinEmp: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'select * from '#1082#1072#1076#1088#1099)
    Left = 176
    Top = 312
  end
  object ADOStoredProcImport: TADOStoredProc
    Connection = Form1.ADOConnection1
    ProcedureName = 'MASS_19.'#1057#1059#1048#1050'_'#1071#1052'.'#1044#1054#1041#1040#1042#1048#1058#1068'_'#1053#1040#1050#1051#1040#1044#1053#1059#1070'_'#1055#1054#1057#1058#1059#1055#1051
    Parameters = <>
    Left = 24
    Top = 282
  end
  object ADOStoredProcExport: TADOStoredProc
    Connection = Form1.ADOConnection1
    ProcedureName = 'MASS_19.'#1057#1059#1048#1050'_'#1071#1052'.'#1044#1054#1041#1040#1042#1048#1058#1068'_'#1053#1040#1050#1051#1040#1044#1053#1059#1070'_'#1054#1058#1055#1056#1040#1042
    Parameters = <>
    Left = 64
    Top = 242
  end
  object ADOStoredProcMove: TADOStoredProc
    Connection = Form1.ADOConnection1
    ProcedureName = 'MASS_19.'#1057#1059#1048#1050'_'#1071#1052'.'#1044#1054#1041#1040#1042#1048#1058#1068'_'#1053#1040#1050#1051#1040#1044#1053#1059#1070'_'#1055#1045#1056#1045#1052#1045#1065
    Parameters = <>
    Left = 104
    Top = 290
  end
  object ActionList1: TActionList
    Left = 352
    Top = 201
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 16449
      OnExecute = Action1Execute
    end
  end
end
