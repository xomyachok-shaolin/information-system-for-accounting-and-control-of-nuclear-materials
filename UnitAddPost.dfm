object Form20: TForm20
  Left = 0
  Top = 0
  Caption = #1057#1059#1080#1050' '#1071#1052' - '#1044#1086#1083#1078#1085#1086#1089#1090#1080' - '#1044#1086#1073#1072#1074#1083#1077#1085#1080#1077
  ClientHeight = 152
  ClientWidth = 289
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
    Width = 289
    Height = 122
    Align = alClient
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 8
      Top = 8
      Width = 273
      Height = 41
      Align = alCustom
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1076#1086#1083#1078#1085#1086#1089#1090#1080
      TabOrder = 0
      object Edit1: TEdit
        Left = 2
        Top = 15
        Width = 269
        Height = 24
        Align = alClient
        TabOrder = 0
        ExplicitHeight = 21
      end
    end
    object GroupBox2: TGroupBox
      Left = 8
      Top = 53
      Width = 273
      Height = 57
      Caption = #1055#1086#1083#1085#1086#1084#1086#1095#1080#1103
      TabOrder = 1
      object CheckListBox1: TCheckListBox
        Left = 2
        Top = 15
        Width = 269
        Height = 40
        Align = alClient
        ItemHeight = 13
        Items.Strings = (
          #1055#1088#1072#1074#1086' '#1086#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1086#1089#1090#1080' '#1079#1072' '#1085#1072#1082#1083#1072#1076#1085#1099#1077
          #1055#1088#1072#1074#1086' '#1086#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1086#1089#1090#1080' '#1079#1072' '#1087#1086#1084#1077#1097#1077#1085#1080#1077)
        TabOrder = 0
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 122
    Width = 289
    Height = 30
    Align = alBottom
    TabOrder = 1
    object Button1: TButton
      AlignWithMargins = True
      Left = 21
      Top = 4
      Width = 121
      Height = 22
      Hint = 'Ctrl + A'
      Margins.Left = 20
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
      Left = 148
      Top = 4
      Width = 121
      Height = 22
      Hint = 'Esc'
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
  object ADOStoredProc1: TADOStoredProc
    Connection = Form1.ADOConnection1
    ProcedureName = 'MASS_19.'#1057#1059#1048#1050'_'#1071#1052'.'#1044#1054#1041#1040#1042#1048#1058#1068'_'#1044#1054#1051#1046#1053#1054#1057#1058#1068
    Parameters = <>
    Left = 56
    Top = 112
  end
  object ActionList1: TActionList
    Left = 88
    Top = 101
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 16449
      OnExecute = Action1Execute
    end
  end
end
