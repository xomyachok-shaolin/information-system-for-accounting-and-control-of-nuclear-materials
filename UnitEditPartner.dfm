object Form6: TForm6
  Left = 0
  Top = 0
  Caption = #1057#1059#1080#1050' '#1071#1052' - '#1055#1088#1077#1076#1087#1088#1080#1103#1090#1080#1103' '#1087#1072#1088#1090#1085#1077#1088#1099' - '#1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
  ClientHeight = 169
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
    Height = 139
    Align = alClient
    TabOrder = 0
    object Label3: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 97
      Width = 21
      Height = 13
      Caption = #1048#1053#1053
    end
    object Label2: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 57
      Width = 31
      Height = 13
      Caption = #1040#1076#1088#1077#1089
    end
    object Label1: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 19
      Width = 73
      Height = 13
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
    end
    object DBEdit3: TDBEdit
      AlignWithMargins = True
      Left = 134
      Top = 94
      Width = 193
      Height = 21
      DataField = #1048#1053#1053
      DataSource = DataSource1
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      AlignWithMargins = True
      Left = 134
      Top = 54
      Width = 193
      Height = 21
      DataField = #1040#1044#1056#1045#1057
      DataSource = DataSource1
      TabOrder = 1
    end
    object DBEdit1: TDBEdit
      AlignWithMargins = True
      Left = 134
      Top = 16
      Width = 193
      Height = 21
      DataField = #1053#1040#1048#1052#1045#1053#1054#1042#1040#1053#1048#1045
      DataSource = DataSource1
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 139
    Width = 342
    Height = 30
    Align = alBottom
    TabOrder = 1
    object Button2: TButton
      AlignWithMargins = True
      Left = 187
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
      'select * from '#1055#1056#1045#1044#1055#1056#1048#1071#1058#1048#1045'_'#1055#1040#1056#1058#1053#1045#1056
      '')
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
    Top = 104
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 16449
      OnExecute = Action1Execute
    end
  end
end
