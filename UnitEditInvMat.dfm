object Form33: TForm33
  Left = 0
  Top = 0
  Caption = #1057#1059#1080#1050' '#1071#1052' - '#1059#1095#1077#1090#1085#1099#1077' '#1077#1076#1080#1085#1080#1094#1099' - '#1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
  ClientHeight = 310
  ClientWidth = 363
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
    Top = 0
    Width = 363
    Height = 89
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 18
      Width = 75
      Height = 13
      Caption = #1058#1080#1087' '#1084#1072#1090#1077#1088#1080#1072#1083#1072
    end
    object Label12: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 54
      Width = 78
      Height = 13
      Caption = #8470' '#1091#1095#1077#1090#1085#1086#1081' '#1077#1076'.'
    end
    object Edit7: TEdit
      Left = 107
      Top = 51
      Width = 137
      Height = 21
      TabOrder = 1
    end
    object DBEdit4: TDBEdit
      Left = 106
      Top = 15
      Width = 168
      Height = 21
      TabStop = False
      DataField = #1053#1040#1047#1042#1040#1053#1048#1045'_'#1052#1040#1058#1045#1056#1048#1040#1051#1040
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 2
    end
    object Button6: TButton
      Left = 280
      Top = 13
      Width = 26
      Height = 25
      Caption = '...'
      TabOrder = 0
      OnClick = Button3Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 278
    Width = 363
    Height = 32
    Align = alBottom
    TabOrder = 4
    object Button1: TButton
      AlignWithMargins = True
      Left = 31
      Top = 4
      Width = 134
      Height = 24
      Hint = 'Ctrl + A'
      Margins.Left = 30
      Align = alLeft
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      ImageIndex = 2
      ImageMargins.Left = 10
      ImageMargins.Right = -10
      Images = Form1.ImageList1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = Button1Click
      ExplicitTop = 6
    end
    object Button2: TButton
      AlignWithMargins = True
      Left = 193
      Top = 4
      Width = 134
      Height = 24
      Hint = 'Esc'
      Margins.Left = 25
      Align = alLeft
      Cancel = True
      Caption = #1054#1090#1084#1077#1085#1072
      ImageIndex = 4
      ImageMargins.Left = 30
      ImageMargins.Right = -30
      Images = Form1.ImageList1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 89
    Width = 363
    Height = 88
    Align = alTop
    TabOrder = 1
    object Label3: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 14
      Width = 20
      Height = 13
      Caption = #1047#1041#1052
    end
    object Label2: TLabel
      AlignWithMargins = True
      Left = 179
      Top = 14
      Width = 37
      Height = 13
      Caption = #1047#1076#1072#1085#1080#1077
    end
    object Label8: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 54
      Width = 58
      Height = 13
      Caption = #1055#1086#1084#1077#1097#1077#1085#1080#1077
    end
    object DBEdit5: TDBEdit
      Left = 51
      Top = 11
      Width = 101
      Height = 21
      TabStop = False
      DataField = #1047#1041#1052
      DataSource = DataSource2
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit6: TDBEdit
      Left = 232
      Top = 11
      Width = 113
      Height = 21
      TabStop = False
      DataField = #1047#1076#1072#1085#1080#1077
      DataSource = DataSource2
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit7: TDBEdit
      Left = 88
      Top = 51
      Width = 104
      Height = 21
      TabStop = False
      DataField = #1055#1086#1084#1077#1097#1077#1085#1080#1077
      DataSource = DataSource2
      ReadOnly = True
      TabOrder = 3
    end
    object Button7: TButton
      Left = 198
      Top = 49
      Width = 26
      Height = 25
      Caption = '...'
      TabOrder = 0
      OnClick = Button7Click
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 230
    Width = 363
    Height = 48
    Align = alBottom
    TabOrder = 3
    object Label7: TLabel
      AlignWithMargins = True
      Left = 172
      Top = 17
      Width = 74
      Height = 13
      Caption = #1042#1077#1089#1099' ('#1080#1085#1074'. '#8470')'
    end
    object Label9: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 17
      Width = 68
      Height = 13
      Caption = #1042#1077#1089' '#1073#1088#1091#1090#1090#1086', '#1075
    end
    object Edit1: TEdit
      Left = 89
      Top = 14
      Width = 63
      Height = 21
      NumbersOnly = True
      TabOrder = 0
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 249
      Top = 14
      Width = 96
      Height = 21
      KeyField = #1048#1044'_'#1042#1045#1057#1054#1042
      ListField = #1048#1053#1042#1045#1053#1058#1040#1056#1053#1067#1049'_'#1053#1054#1052#1045#1056'_'#1042#1045#1057#1054#1042
      ListSource = DataSource4
      TabOrder = 1
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 177
    Width = 363
    Height = 53
    Align = alClient
    TabOrder = 2
    object Label4: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 17
      Width = 81
      Height = 13
      Caption = #1058#1080#1087' '#1082#1086#1085#1090#1077#1081#1085#1077#1088#1072
    end
    object Label5: TLabel
      AlignWithMargins = True
      Left = 211
      Top = 17
      Width = 32
      Height = 13
      Caption = #1060#1086#1088#1084#1072
    end
    object ComboBox1: TComboBox
      Left = 249
      Top = 14
      Width = 96
      Height = 21
      TabOrder = 1
      OnKeyPress = ComboBox3KeyPress
      Items.Strings = (
        #1041#1072#1083#1082'-'#1092#1086#1088#1084#1072
        #1058#1074#1077#1088#1076#1072#1103' '#1092#1086#1088#1084#1072
        #1043#1072#1079)
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 103
      Top = 14
      Width = 89
      Height = 21
      KeyField = #1048#1044'_'#1058#1048#1055#1040'_'#1050#1054#1053#1058#1045#1049#1053#1045#1056#1040
      ListField = #1053#1054#1052#1045#1056'_'#1063#1045#1056#1058#1045#1046#1040
      ListSource = DataSource3
      TabOrder = 0
    end
  end
  object ADOStoredProc1: TADOStoredProc
    Connection = Form1.ADOConnection1
    ProcedureName = 'MASS_19.'#1057#1059#1048#1050'_'#1071#1052'.'#1056#1045#1044#1040#1050#1058#1048#1056#1054#1042#1040#1058#1068'_'#1059#1063#1045#1058#1053#1059#1070'_'#1045#1044#1048#1053#1048#1062#1059
    Parameters = <>
    Prepared = True
    Left = 96
    Top = 240
  end
  object ADOQuery2: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#1084#1077#1089#1090#1086#1087#1086#1083#1086#1078)
    Left = 240
    Top = 129
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 296
    Top = 129
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#1090#1080#1087'_'#1084#1072#1090#1077#1088#1080#1072#1083#1072' ')
    Left = 120
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 176
    Top = 8
  end
  object ADOQuery3: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#1090#1080#1087'_'#1082#1086#1085#1090#1077#1081#1085#1077#1088#1072)
    Left = 32
    Top = 177
  end
  object DataSource3: TDataSource
    DataSet = ADOQuery3
    Left = 96
    Top = 177
  end
  object ADOQuery4: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#1074#1077#1089#1099)
    Left = 248
    Top = 234
  end
  object DataSource4: TDataSource
    DataSet = ADOQuery4
    Left = 296
    Top = 234
  end
  object ActionList1: TActionList
    Left = 216
    Top = 217
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 16449
      OnExecute = Action1Execute
    end
  end
end
