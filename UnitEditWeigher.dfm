object Form15: TForm15
  Left = 0
  Top = 0
  Caption = #1057#1059#1080#1050' '#1071#1052' - '#1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1074#1077#1089#1086#1074' - '#1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
  ClientHeight = 143
  ClientWidth = 506
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 506
    Height = 113
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 16
      Width = 85
      Height = 13
      Caption = #1048#1085#1074#1077#1085#1090#1072#1088#1085#1099#1081' '#8470
    end
    object Label2: TLabel
      AlignWithMargins = True
      Left = 270
      Top = 15
      Width = 82
      Height = 13
      Caption = #1055#1088#1077#1076#1077#1083' '#1074#1077#1089#1086#1074', '#1075
    end
    object Label3: TLabel
      AlignWithMargins = True
      Left = 270
      Top = 48
      Width = 85
      Height = 13
      Caption = #1055#1086#1075#1088#1077#1096#1085#1086#1089#1090#1100', %'
    end
    object Label4: TLabel
      AlignWithMargins = True
      Left = 270
      Top = 80
      Width = 89
      Height = 13
      Caption = #1044#1072#1090#1072' '#1082#1072#1083#1080#1073#1088#1086#1074#1082#1080
    end
    object Label5: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 80
      Width = 67
      Height = 13
      Caption = #1057#1077#1088#1080#1081#1085#1099#1081' '#8470
    end
    object Label6: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 48
      Width = 32
      Height = 13
      Caption = #1052#1072#1088#1082#1072
    end
    object DateTimePicker1: TDateTimePicker
      Left = 384
      Top = 78
      Width = 105
      Height = 21
      Date = 44006.000000000000000000
      Time = 0.659365601852187000
      TabOrder = 5
    end
    object DBEdit1: TDBEdit
      Left = 130
      Top = 15
      Width = 105
      Height = 21
      DataField = #1048#1053#1042#1045#1053#1058#1040#1056#1053#1067#1049'_'#1053#1054#1052#1045#1056'_'#1042#1045#1057#1054#1042
      DataSource = DataSource1
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 384
      Top = 15
      Width = 105
      Height = 21
      DataField = #1055#1056#1045#1044#1045#1051'_'#1042#1045#1057#1054#1042
      DataSource = DataSource1
      TabOrder = 3
    end
    object DBEdit3: TDBEdit
      Left = 384
      Top = 45
      Width = 105
      Height = 21
      DataField = #1055#1054#1043#1056#1045#1064#1053#1054#1057#1058#1068
      DataSource = DataSource1
      TabOrder = 4
    end
    object DBEdit4: TDBEdit
      Left = 130
      Top = 77
      Width = 105
      Height = 21
      DataField = #1057#1045#1056#1048#1049#1053#1067#1049'_'#1053#1054#1052#1045#1056
      DataSource = DataSource1
      TabOrder = 2
    end
    object DBEdit5: TDBEdit
      Left = 130
      Top = 45
      Width = 105
      Height = 21
      DataField = #1052#1040#1056#1050#1040'_'#1042#1045#1057#1054#1042
      DataSource = DataSource1
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 113
    Width = 506
    Height = 30
    Align = alBottom
    TabOrder = 1
    object Button1: TButton
      AlignWithMargins = True
      Left = 121
      Top = 4
      Width = 115
      Height = 22
      Hint = 'Ctrl + A'
      Margins.Left = 120
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
      Left = 284
      Top = 4
      Width = 115
      Height = 22
      Hint = 'Esc'
      Margins.Left = 45
      Align = alLeft
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
    ProcedureName = 'MASS_19.'#1057#1059#1048#1050'_'#1071#1052'.'#1056#1045#1044#1040#1050#1058#1048#1056#1054#1042#1040#1058#1068'_'#1042#1045#1057#1067
    Parameters = <>
    Left = 168
    Top = 104
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    AfterScroll = ADOQuery1AfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from '#1042#1077#1089#1099)
    Left = 176
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 256
  end
  object ActionList1: TActionList
    Left = 48
    Top = 104
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 16449
      OnExecute = Action1Execute
    end
  end
end
