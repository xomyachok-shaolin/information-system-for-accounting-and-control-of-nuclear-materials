object Form22: TForm22
  Left = 0
  Top = 0
  Caption = #1057#1059#1080#1050' '#1071#1052' - '#1057#1086#1090#1088#1091#1076#1085#1080#1082#1080' - '#1044#1086#1073#1072#1074#1083#1077#1085#1080#1077
  ClientHeight = 415
  ClientWidth = 324
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
    Width = 324
    Height = 177
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 48
      Width = 44
      Height = 13
      Caption = #1060#1072#1084#1080#1083#1080#1103
    end
    object Label2: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 80
      Width = 19
      Height = 13
      Caption = #1048#1084#1103
    end
    object Label3: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 112
      Width = 49
      Height = 13
      Caption = #1054#1090#1095#1077#1089#1090#1074#1086
    end
    object Label5: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 145
      Width = 57
      Height = 13
      Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
    end
    object Label12: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 16
      Width = 72
      Height = 13
      Caption = #1058#1072#1073#1077#1083#1100#1085#1099#1081' '#8470
    end
    object Edit1: TEdit
      Left = 112
      Top = 45
      Width = 176
      Height = 21
      TabOrder = 2
    end
    object Edit2: TEdit
      Left = 112
      Top = 77
      Width = 155
      Height = 21
      TabOrder = 3
    end
    object Edit3: TEdit
      Left = 112
      Top = 109
      Width = 176
      Height = 21
      TabOrder = 4
    end
    object Edit7: TEdit
      Left = 112
      Top = 13
      Width = 90
      Height = 21
      TabOrder = 0
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 112
      Top = 142
      Width = 176
      Height = 21
      KeyField = #1048#1044'_'#1044#1054#1051#1046#1053#1054#1057#1058#1048
      ListField = #1053#1040#1048#1052#1045#1053#1054#1042#1040#1053#1048#1045
      ListFieldIndex = 1
      ListSource = DataSourcePosts
      TabOrder = 5
    end
    object CheckBox1: TCheckBox
      AlignWithMargins = True
      Left = 223
      Top = 15
      Width = 90
      Height = 17
      BiDiMode = bdLeftToRight
      Caption = #1056#1072#1073#1086#1090#1072#1102#1097#1080#1081'?'
      Checked = True
      ParentBiDiMode = False
      State = cbChecked
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 385
    Width = 324
    Height = 30
    Align = alBottom
    TabOrder = 1
    object Button1: TButton
      AlignWithMargins = True
      Left = 34
      Top = 4
      Width = 115
      Height = 22
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
    Top = 221
    Width = 324
    Height = 164
    Align = alBottom
    TabOrder = 2
    object Label11: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 132
      Width = 35
      Height = 13
      Caption = #1057#1053#1048#1051#1057
    end
    object Label7: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 48
      Width = 186
      Height = 13
      Caption = #1055#1072#1089#1087#1086#1088#1090#1085#1099#1077' '#1076#1072#1085#1085#1099#1077' ('#1089#1077#1088#1080#1103' '#1080' '#1085#1086#1084#1077#1088')'
    end
    object Label8: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 83
      Width = 31
      Height = 13
      Caption = #1040#1076#1088#1077#1089
    end
    object Label10: TLabel
      AlignWithMargins = True
      Left = 246
      Top = 12
      Width = 19
      Height = 13
      Caption = #1055#1086#1083
    end
    object Label4: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 12
      Width = 80
      Height = 13
      Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
    end
    object Label13: TLabel
      AlignWithMargins = True
      Left = 192
      Top = 132
      Width = 21
      Height = 13
      Caption = #1048#1053#1053
    end
    object Memo1: TMemo
      Left = 64
      Top = 80
      Width = 249
      Height = 38
      TabOrder = 3
    end
    object ComboBox1: TComboBox
      Left = 277
      Top = 9
      Width = 35
      Height = 21
      ItemIndex = 0
      TabOrder = 1
      Text = #1084
      Items.Strings = (
        #1084
        #1078)
    end
    object DateTimePicker1: TDateTimePicker
      Left = 112
      Top = 9
      Width = 113
      Height = 21
      Date = 44009.000000000000000000
      Format = 'dd MMM, yyyy'
      Time = 0.509875625000859100
      TabOrder = 0
    end
    object MaskEdit1: TMaskEdit
      Left = 240
      Top = 45
      Width = 72
      Height = 21
      EditMask = '0000\ 000000;1;_'
      MaxLength = 11
      TabOrder = 2
      Text = '           '
    end
    object MaskEdit2: TMaskEdit
      Left = 64
      Top = 129
      Width = 87
      Height = 21
      EditMask = '000\-000\-000 00;1;_'
      MaxLength = 14
      TabOrder = 4
      Text = '   -   -      '
    end
    object MaskEdit3: TMaskEdit
      Left = 228
      Top = 129
      Width = 65
      Height = 21
      EditMask = '000000000;1;_'
      MaxLength = 9
      TabOrder = 5
      Text = '         '
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 177
    Width = 324
    Height = 44
    Align = alClient
    AutoSize = True
    TabOrder = 3
    object DBEdit1: TDBEdit
      AlignWithMargins = True
      Left = 112
      Top = 10
      Width = 170
      Height = 24
      Margins.Top = 9
      Margins.Bottom = 9
      TabStop = False
      Align = alClient
      DataField = #1060#1048#1054' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
      DataSource = DataSourceBoss
      ReadOnly = True
      TabOrder = 2
      ExplicitHeight = 21
    end
    object Button4: TButton
      AlignWithMargins = True
      Left = 288
      Top = 10
      Width = 25
      Height = 24
      Margins.Top = 9
      Margins.Right = 10
      Margins.Bottom = 9
      Align = alRight
      Caption = '...'
      TabOrder = 1
      OnClick = Button4Click
    end
    object CheckBox2: TCheckBox
      AlignWithMargins = True
      Left = 17
      Top = 4
      Width = 89
      Height = 36
      Margins.Left = 16
      Align = alLeft
      BiDiMode = bdLeftToRight
      Caption = #1056#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1100
      Checked = True
      ParentBiDiMode = False
      State = cbChecked
      TabOrder = 0
      OnClick = CheckBox2Click
    end
  end
  object DataSourcePosts: TDataSource
    DataSet = ADOQueryPosts
    Left = 139
    Top = 132
  end
  object ADOQueryPosts: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#1076#1086#1083#1078#1085#1086#1089#1090#1080)
    Left = 187
    Top = 124
  end
  object DataSourceBoss: TDataSource
    DataSet = ADOQueryBoss
    Left = 144
    Top = 176
  end
  object ADOQueryBoss: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'select * from '#1082#1072#1076#1088#1099)
    Left = 192
    Top = 176
  end
  object ADOStoredProc1: TADOStoredProc
    Connection = Form1.ADOConnection1
    ProcedureName = 'MASS_19.'#1057#1059#1048#1050'_'#1071#1052'.'#1044#1054#1041#1040#1042#1048#1058#1068'_'#1057#1054#1058#1056#1059#1044#1053#1048#1050#1040
    Parameters = <
      item
        Name = #1057'_'#1058#1040#1041#1045#1051#1068#1053#1067#1049'_'#1053#1054#1052#1045#1056
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = #1056#1059#1050#1054#1042#1054#1044#1048#1058#1045#1051#1068
        Attributes = [paNullable]
        DataType = ftBCD
        Precision = 10
        Value = Null
      end
      item
        Name = #1044#1054#1051#1046#1053#1054#1057#1058#1068
        Attributes = [paNullable]
        DataType = ftVariant
        Precision = 10
        Value = 0
      end
      item
        Name = #1057'_'#1060#1040#1052#1048#1051#1048#1071
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end
      item
        Name = #1057'_'#1048#1052#1071
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = #1057'_'#1054#1058#1063#1045#1057#1058#1042#1054
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end
      item
        Name = #1057'_'#1044#1040#1058#1040'_'#1056#1054#1046#1044#1045#1053#1048#1071
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = #1057'_'#1055#1054#1051
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = #1057'_'#1040#1044#1056#1045#1057
        Attributes = [paNullable]
        DataType = ftString
        Size = 200
        Value = Null
      end
      item
        Name = #1055#1040#1057#1055#1054#1056#1058
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = #1057'_'#1048#1053#1053
        Attributes = [paNullable]
        DataType = ftString
        Size = 12
        Value = Null
      end
      item
        Name = #1057'_'#1057#1053#1048#1051#1057
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end
      item
        Name = #1057#1058#1040#1058#1059#1057'_'#1056#1040#1041#1054#1058#1067
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end>
    Prepared = True
    Left = 88
    Top = 376
  end
  object ActionList1: TActionList
    Left = 160
    Top = 349
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 16449
      OnExecute = Action1Execute
    end
  end
end
