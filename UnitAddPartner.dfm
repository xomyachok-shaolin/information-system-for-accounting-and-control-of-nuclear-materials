object Form5: TForm5
  Left = 0
  Top = 0
  Caption = #1057#1059#1080#1050' '#1071#1052' - '#1055#1088#1077#1076#1087#1088#1080#1103#1090#1080#1103' '#1087#1072#1088#1090#1085#1077#1088#1099' - '#1044#1086#1073#1072#1074#1083#1077#1085#1080#1077
  ClientHeight = 141
  ClientWidth = 347
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
    Top = 112
    Width = 347
    Height = 29
    Align = alBottom
    TabOrder = 1
    object Button2: TButton
      AlignWithMargins = True
      Left = 189
      Top = 4
      Width = 115
      Height = 21
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
      Left = 46
      Top = 4
      Width = 115
      Height = 21
      Hint = 'Ctrl + A'
      Margins.Left = 45
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
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 347
    Height = 112
    Align = alClient
    TabOrder = 0
    object Label3: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 80
      Width = 21
      Height = 13
      Caption = #1048#1053#1053
    end
    object Label2: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 48
      Width = 31
      Height = 13
      Caption = #1040#1076#1088#1077#1089
    end
    object Label1: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 16
      Width = 73
      Height = 13
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
    end
    object Edit3: TEdit
      Left = 136
      Top = 77
      Width = 193
      Height = 21
      TabOrder = 2
    end
    object Edit2: TEdit
      Left = 136
      Top = 45
      Width = 193
      Height = 21
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 136
      Top = 13
      Width = 193
      Height = 21
      TabOrder = 0
    end
  end
  object ADOStoredProc1: TADOStoredProc
    Connection = Form1.ADOConnection1
    DataSource = Form2.DataSourcePartners
    ProcedureName = 'MASS_19.'#1057#1059#1048#1050'_'#1071#1052'.'#1044#1054#1041#1040#1042#1048#1058#1068'_'#1055#1056#1045#1044#1055#1056#1048#1071#1058#1048#1045
    Parameters = <>
    Left = 80
    Top = 96
  end
  object ActionList1: TActionList
    Left = 64
    Top = 96
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 16449
      OnExecute = Action1Execute
    end
  end
end
