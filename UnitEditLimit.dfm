object Form27: TForm27
  Left = 0
  Top = 0
  Caption = #1057#1059#1080#1050' '#1071#1052' - '#1055#1088#1077#1076#1077#1083#1099' - '#1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
  ClientHeight = 127
  ClientWidth = 269
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
    Top = 45
    Width = 269
    Height = 48
    Align = alClient
    TabOrder = 1
    object Label5: TLabel
      AlignWithMargins = True
      Left = 12
      Top = 17
      Width = 83
      Height = 13
      Margins.Left = 11
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1091'.'#1077'.'
    end
    object Edit1: TEdit
      Left = 106
      Top = 14
      Width = 121
      Height = 21
      NumbersOnly = True
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 93
    Width = 269
    Height = 34
    Align = alBottom
    TabOrder = 2
    object Button1: TButton
      AlignWithMargins = True
      Left = 12
      Top = 4
      Width = 115
      Height = 26
      Hint = 'Ctrl + A'
      Margins.Left = 11
      Align = alLeft
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      ImageIndex = 2
      ImageMargins.Left = 3
      ImageMargins.Right = -3
      Images = Form1.ImageList1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      AlignWithMargins = True
      Left = 141
      Top = 4
      Width = 115
      Height = 26
      Hint = 'Esc'
      Margins.Left = 11
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
    Top = 0
    Width = 269
    Height = 45
    Align = alTop
    AutoSize = True
    TabOrder = 0
    object Label1: TLabel
      AlignWithMargins = True
      Left = 12
      Top = 12
      Width = 75
      Height = 29
      Margins.Left = 11
      Margins.Top = 11
      Align = alLeft
      Caption = #1058#1080#1087' '#1084#1072#1090#1077#1088#1080#1072#1083#1072
      ExplicitHeight = 13
    end
    object DBEdit1: TDBEdit
      AlignWithMargins = True
      Left = 105
      Top = 10
      Width = 122
      Height = 25
      Margins.Left = 15
      Margins.Top = 9
      Margins.Bottom = 9
      TabStop = False
      Align = alClient
      DataField = #1053#1040#1047#1042#1040#1053#1048#1045'_'#1052#1040#1058#1045#1056#1048#1040#1051#1040
      DataSource = DataSourceTypesMaterial
      ReadOnly = True
      TabOrder = 0
      ExplicitHeight = 21
    end
    object Button4: TButton
      AlignWithMargins = True
      Left = 233
      Top = 10
      Width = 25
      Height = 25
      Margins.Top = 9
      Margins.Right = 10
      Margins.Bottom = 9
      Align = alRight
      Caption = '...'
      TabOrder = 1
      OnClick = Button4Click
    end
  end
  object DataSourceTypesMaterial: TDataSource
    DataSet = ADOQueryTypesMaterial
    Left = 168
    Top = 8
  end
  object ADOQueryTypesMaterial: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'select * from '#1090#1080#1087'_'#1084#1072#1090#1077#1088#1080#1072#1083#1072)
    Left = 120
    Top = 8
  end
  object ADOStoredProc1: TADOStoredProc
    Connection = Form1.ADOConnection1
    ProcedureName = 'MASS_19.'#1057#1059#1048#1050'_'#1071#1052'.'#1056#1045#1044#1040#1050#1058#1048#1056#1054#1042#1040#1058#1068'_'#1055#1056#1045#1044#1045#1051
    Parameters = <>
    Prepared = True
    Left = 64
    Top = 88
  end
  object ADOQuery1: TADOQuery
    Connection = Form1.ADOConnection1
    Parameters = <>
    Left = 216
    Top = 69
  end
  object ActionList1: TActionList
    Left = 104
    Top = 93
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 16449
      OnExecute = Action1Execute
    end
  end
end
