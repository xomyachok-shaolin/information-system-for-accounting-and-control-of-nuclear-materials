object Form12: TForm12
  Left = 0
  Top = 0
  Caption = #1057#1059#1080#1050' '#1071#1052' - '#1058#1080#1087' '#1082#1086#1085#1090#1077#1081#1085#1077#1088#1072' - '#1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
  ClientHeight = 243
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
    Height = 213
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 19
      Width = 78
      Height = 13
      Caption = #1053#1086#1084#1077#1088' '#1095#1077#1088#1090#1077#1078#1072
    end
    object Label2: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 57
      Width = 93
      Height = 13
      Caption = #1052#1072#1089#1089#1072' '#1082#1086#1085#1090#1077#1081#1085#1077#1088#1072
    end
    object Label3: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 97
      Width = 40
      Height = 13
      Caption = #1064#1080#1088#1080#1085#1072
    end
    object Label4: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 135
      Width = 32
      Height = 13
      Caption = #1044#1083#1080#1085#1072
    end
    object Label5: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 176
      Width = 37
      Height = 13
      Caption = #1042#1099#1089#1086#1090#1072
    end
    object DBEdit1: TDBEdit
      AlignWithMargins = True
      Left = 134
      Top = 16
      Width = 193
      Height = 21
      BiDiMode = bdRightToLeft
      DataField = #1053#1054#1052#1045#1056'_'#1063#1045#1056#1058#1045#1046#1040
      DataSource = DataSource1
      ParentBiDiMode = False
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      AlignWithMargins = True
      Left = 134
      Top = 54
      Width = 193
      Height = 21
      DataField = #1052#1040#1057#1057#1040'_'#1050#1054#1053#1058#1045#1049#1053#1045#1056#1040
      DataSource = DataSource1
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      AlignWithMargins = True
      Left = 134
      Top = 94
      Width = 193
      Height = 21
      DataField = #1064#1048#1056#1048#1053#1040
      DataSource = DataSource1
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      AlignWithMargins = True
      Left = 134
      Top = 132
      Width = 193
      Height = 21
      DataField = #1044#1051#1048#1053#1040
      DataSource = DataSource1
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      AlignWithMargins = True
      Left = 134
      Top = 173
      Width = 193
      Height = 21
      DataField = #1042#1067#1057#1054#1058#1040
      DataSource = DataSource1
      TabOrder = 4
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 213
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
    end
  end
  object ADOStoredProc1: TADOStoredProc
    Connection = Form1.ADOConnection1
    DataSource = Form10.DataSourceTypesContainer
    ProcedureName = 'MASS_19.'#1057#1059#1048#1050'_'#1071#1052'.'#1056#1045#1044#1040#1050#1058#1048#1056#1054#1042#1040#1058#1068'_'#1058#1048#1055'_'#1050#1054#1053#1058#1045#1049#1053#1045#1056#1040
    Parameters = <>
    Prepared = True
    Left = 80
    Top = 208
  end
  object ADOQuery1: TADOQuery
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#1058#1080#1087'_'#1082#1086#1085#1090#1077#1081#1085#1077#1088#1072)
    Left = 296
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 296
    Top = 72
  end
  object ActionList1: TActionList
    Left = 64
    Top = 184
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 16449
      OnExecute = Action1Execute
    end
  end
end
