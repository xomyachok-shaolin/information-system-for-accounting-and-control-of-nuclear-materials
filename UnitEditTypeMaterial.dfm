object Form9: TForm9
  Left = 0
  Top = 0
  Caption = #1057#1059#1080#1050' '#1071#1052' - '#1058#1080#1087' '#1084#1072#1090#1077#1088#1080#1072#1083#1072' - '#1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
  ClientHeight = 162
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
    Height = 132
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 19
      Width = 104
      Height = 13
      Caption = #1050#1086#1076' '#1090#1080#1087#1072' '#1084#1072#1090#1077#1088#1080#1072#1083#1072
    end
    object Label2: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 57
      Width = 73
      Height = 13
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
    end
    object Label3: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 97
      Width = 114
      Height = 13
      Caption = #1042#1077#1089' '#1082#1072#1078#1076#1086#1075#1086' '#1101#1083#1077#1084#1077#1085#1090#1072
    end
    object DBEdit1: TDBEdit
      AlignWithMargins = True
      Left = 168
      Top = 16
      Width = 159
      Height = 21
      BiDiMode = bdRightToLeft
      DataField = #1050#1054#1044'_'#1058#1048#1055#1040'_'#1052#1040#1058#1045#1056#1048#1040#1051#1040
      DataSource = DataSource1
      ParentBiDiMode = False
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      AlignWithMargins = True
      Left = 168
      Top = 54
      Width = 159
      Height = 21
      BiDiMode = bdRightToLeft
      DataField = #1053#1040#1047#1042#1040#1053#1048#1045'_'#1052#1040#1058#1045#1056#1048#1040#1051#1040
      DataSource = DataSource1
      ParentBiDiMode = False
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      AlignWithMargins = True
      Left = 168
      Top = 94
      Width = 159
      Height = 21
      BiDiMode = bdLeftToRight
      DataField = #1042#1045#1057'_'#1050#1040#1046#1044#1054#1043#1054'_'#1069#1051#1045#1052#1045#1053#1058#1040
      DataSource = DataSource1
      ParentBiDiMode = False
      TabOrder = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 132
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
    ProcedureName = 'MASS_19.'#1057#1059#1048#1050'_'#1071#1052'.'#1056#1045#1044#1040#1050#1058#1048#1056#1054#1042#1040#1058#1068'_'#1055#1056#1045#1044#1055#1056#1048#1071#1058#1048#1045
    Parameters = <>
    Left = 72
    Top = 128
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#1090#1080#1087'_'#1084#1072#1090#1077#1088#1080#1072#1083#1072
      '')
    Left = 296
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 288
    Top = 56
  end
  object ActionList1: TActionList
    Left = 112
    Top = 128
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 16449
      OnExecute = Action1Execute
    end
  end
end
