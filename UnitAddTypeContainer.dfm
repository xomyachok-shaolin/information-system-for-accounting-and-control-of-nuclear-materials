object Form11: TForm11
  Left = 0
  Top = 0
  Caption = #1057#1059#1080#1050' '#1071#1052' - '#1058#1080#1087' '#1082#1086#1085#1090#1077#1081#1085#1077#1088#1072' - '#1044#1086#1073#1072#1074#1080#1090#1100
  ClientHeight = 215
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
    Top = 180
    Width = 347
    Height = 35
    Align = alBottom
    TabOrder = 1
    object Button2: TButton
      AlignWithMargins = True
      Left = 189
      Top = 4
      Width = 115
      Height = 27
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
      Height = 27
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
    Height = 180
    Align = alClient
    TabOrder = 0
    object Label5: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 144
      Width = 37
      Height = 13
      Caption = #1042#1099#1089#1086#1090#1072
    end
    object Label4: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 112
      Width = 32
      Height = 13
      Caption = #1044#1083#1080#1085#1072
    end
    object Label3: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 80
      Width = 40
      Height = 13
      Caption = #1064#1080#1088#1080#1085#1072
    end
    object Label2: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 48
      Width = 93
      Height = 13
      Caption = #1052#1072#1089#1089#1072' '#1082#1086#1085#1090#1077#1081#1085#1077#1088#1072
    end
    object Label1: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 16
      Width = 78
      Height = 13
      Caption = #1053#1086#1084#1077#1088' '#1095#1077#1088#1090#1077#1078#1072
    end
    object Edit5: TEdit
      Left = 136
      Top = 141
      Width = 193
      Height = 21
      TabOrder = 4
    end
    object Edit4: TEdit
      Left = 136
      Top = 109
      Width = 193
      Height = 21
      TabOrder = 3
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
    DataSource = Form10.DataSourceTypesContainer
    ProcedureName = 'MASS_19.'#1057#1059#1048#1050'_'#1071#1052'.'#1044#1054#1041#1040#1042#1048#1058#1068'_'#1058#1048#1055'_'#1050#1054#1053#1058#1045#1049#1053#1045#1056#1040
    Parameters = <>
    Left = 104
    Top = 168
  end
  object ActionList1: TActionList
    Left = 88
    Top = 164
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 16449
      OnExecute = Action1Execute
    end
  end
end
