object Form14: TForm14
  Left = 0
  Top = 0
  Caption = #1057#1059#1080#1050' '#1071#1052' - '#1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1074#1077#1089#1086#1074' - '#1044#1086#1073#1072#1074#1083#1077#1085#1080#1077
  ClientHeight = 147
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
    Height = 117
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
    object Edit1: TEdit
      Left = 130
      Top = 15
      Width = 105
      Height = 21
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 384
      Top = 15
      Width = 105
      Height = 21
      TabOrder = 3
    end
    object Edit3: TEdit
      Left = 384
      Top = 45
      Width = 105
      Height = 21
      TabOrder = 4
    end
    object Edit4: TEdit
      Left = 130
      Top = 77
      Width = 105
      Height = 21
      TabOrder = 2
    end
    object Edit5: TEdit
      Left = 130
      Top = 45
      Width = 105
      Height = 21
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 117
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
    ProcedureName = 'MASS_19.'#1057#1059#1048#1050'_'#1071#1052'.'#1044#1054#1041#1040#1042#1048#1058#1068'_'#1042#1045#1057#1067
    Parameters = <>
    Left = 168
    Top = 96
  end
  object ActionList1: TActionList
    Left = 56
    Top = 104
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 16449
      OnExecute = Action1Execute
    end
  end
end
