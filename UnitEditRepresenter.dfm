object Form4: TForm4
  Left = 0
  Top = 0
  Caption = #1057#1059#1080#1050' '#1071#1052' - '#1055#1088#1077#1076#1089#1090#1072#1074#1080#1090#1077#1083#1080' '#1087#1088#1077#1076#1087#1088#1080#1103#1090#1080#1081' - '#1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
  ClientHeight = 239
  ClientWidth = 342
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyUp = FormKeyUp
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 342
    Height = 209
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 19
      Width = 44
      Height = 13
      Caption = #1060#1072#1084#1080#1083#1080#1103
    end
    object Label2: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 57
      Width = 19
      Height = 13
      Caption = #1048#1084#1103
    end
    object Label3: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 97
      Width = 49
      Height = 13
      Caption = #1054#1090#1095#1077#1089#1090#1074#1086
    end
    object Label4: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 135
      Width = 89
      Height = 13
      Caption = #1058#1072#1073#1077#1083#1100#1085#1099#1081' '#1085#1086#1084#1077#1088
    end
    object Label5: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 176
      Width = 104
      Height = 13
      Caption = #1055#1072#1089#1087#1086#1088#1090#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
    end
    object DBEdit1: TDBEdit
      AlignWithMargins = True
      Left = 134
      Top = 16
      Width = 193
      Height = 21
      DataField = #1060#1040#1052#1048#1051#1048#1071
      DataSource = DataSource1
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      AlignWithMargins = True
      Left = 134
      Top = 54
      Width = 193
      Height = 21
      DataField = #1048#1052#1071
      DataSource = DataSource1
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      AlignWithMargins = True
      Left = 134
      Top = 94
      Width = 193
      Height = 21
      DataField = #1054#1058#1063#1045#1057#1058#1042#1054
      DataSource = DataSource1
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      AlignWithMargins = True
      Left = 134
      Top = 132
      Width = 193
      Height = 21
      DataField = #1058#1040#1041#1045#1051#1068#1053#1067#1049'_'#1053#1054#1052#1045#1056'_'#1055#1056#1045#1044#1057#1058#1040#1042#1048#1058#1045#1051#1071
      DataSource = DataSource1
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      AlignWithMargins = True
      Left = 134
      Top = 173
      Width = 193
      Height = 21
      DataField = #1055#1040#1057#1055#1054#1056#1058#1053#1067#1045'_'#1044#1040#1053#1053#1067#1045
      DataSource = DataSource1
      TabOrder = 4
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 209
    Width = 342
    Height = 30
    Align = alBottom
    TabOrder = 1
    object Button1: TButton
      AlignWithMargins = True
      Left = 36
      Top = 4
      Width = 123
      Height = 22
      Hint = 'Ctrl + A'
      Margins.Left = 35
      Align = alLeft
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      ImageIndex = 2
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
      Left = 187
      Top = 4
      Width = 123
      Height = 22
      Hint = 'Esc'
      Margins.Left = 25
      Align = alLeft
      Cancel = True
      Caption = #1054#1090#1084#1077#1085#1072
      ImageIndex = 4
      ImageMargins.Left = 25
      ImageMargins.Right = -25
      Images = Form1.ImageList1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object ADOStoredProc1: TADOStoredProc
    Connection = Form1.ADOConnection1
    DataSource = Form2.DataSourceRepresent
    ProcedureName = 'MASS_19.'#1057#1059#1048#1050'_'#1071#1052'.'#1056#1045#1044#1040#1050#1058#1048#1056#1054#1042#1040#1058#1068'_'#1055#1056#1045#1044#1057#1058#1040#1042#1048#1058#1045#1051#1071
    Parameters = <
      item
        Name = #1055#1056#1045#1044#1057#1058#1040#1042#1048#1058#1045#1051#1068
        Attributes = [paNullable]
        DataType = ftBCD
        Precision = 10
        Value = Null
      end
      item
        Name = #1055#1056'_'#1060#1040#1052#1048#1051#1048#1071
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end
      item
        Name = #1055#1056'_'#1048#1052#1071
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = Null
      end
      item
        Name = #1055#1056'_'#1054#1058#1063#1045#1057#1058#1042#1054
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end
      item
        Name = #1055#1056'_'#1055#1040#1057#1055#1054#1056#1058
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = #1058#1040#1041#1045#1051#1068#1053#1067#1049'_'#1053#1054#1052#1045#1056
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end>
    Left = 80
    Top = 208
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#1087#1088#1077#1076#1089#1090#1072#1074#1080#1090#1077#1083#1080)
    Left = 296
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 296
    Top = 72
  end
end
