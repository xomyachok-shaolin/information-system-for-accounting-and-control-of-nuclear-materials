object Form32: TForm32
  Left = 0
  Top = 0
  Caption = #1055#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077' '#1084#1072#1090#1077#1088#1080#1072#1083#1072' '
  ClientHeight = 136
  ClientWidth = 363
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
  object Panel2: TPanel
    Left = 0
    Top = 104
    Width = 363
    Height = 32
    Align = alBottom
    TabOrder = 1
    object Button1: TButton
      AlignWithMargins = True
      Left = 41
      Top = 4
      Width = 125
      Height = 24
      Hint = 'Ctrl + A'
      Margins.Left = 40
      Align = alLeft
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
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
      Left = 194
      Top = 4
      Width = 123
      Height = 24
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
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 363
    Height = 104
    Align = alClient
    TabOrder = 0
    object Label3: TLabel
      AlignWithMargins = True
      Left = 12
      Top = 30
      Width = 20
      Height = 13
      Caption = #1047#1041#1052
    end
    object Label2: TLabel
      AlignWithMargins = True
      Left = 175
      Top = 30
      Width = 37
      Height = 13
      Caption = #1047#1076#1072#1085#1080#1077
    end
    object Label8: TLabel
      AlignWithMargins = True
      Left = 12
      Top = 70
      Width = 58
      Height = 13
      Caption = #1055#1086#1084#1077#1097#1077#1085#1080#1077
    end
    object DBEdit5: TDBEdit
      Left = 47
      Top = 27
      Width = 101
      Height = 21
      TabStop = False
      DataField = #1047#1041#1052
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit6: TDBEdit
      Left = 228
      Top = 27
      Width = 113
      Height = 21
      TabStop = False
      DataField = #1047#1076#1072#1085#1080#1077
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit7: TDBEdit
      Left = 84
      Top = 67
      Width = 104
      Height = 21
      TabStop = False
      DataField = #1055#1086#1084#1077#1097#1077#1085#1080#1077
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 3
    end
    object Button7: TButton
      Left = 194
      Top = 65
      Width = 26
      Height = 25
      Caption = '...'
      TabOrder = 0
      OnClick = Button7Click
    end
    object StaticText1: TStaticText
      Left = 1
      Top = 1
      Width = 361
      Height = 17
      Align = alTop
      Alignment = taCenter
      Caption = #1053#1086#1074#1086#1077' '#1084#1077#1089#1090#1086#1087#1086#1083#1086#1078#1077#1085#1080#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object DBEdit1: TDBEdit
      Left = 12
      Top = 3
      Width = 121
      Height = 21
      DataField = #1048#1044'_'#1059#1045
      DataSource = Form16.DataSourceAU
      TabOrder = 5
      Visible = False
    end
  end
  object ADOStoredProc1: TADOStoredProc
    Connection = Form1.ADOConnection1
    ProcedureName = 'MASS_19.'#1057#1059#1048#1050'_'#1071#1052'.'#1055#1045#1056#1045#1052#1045#1057#1058#1048#1058#1068'_'#1059#1063#1045#1058#1053#1059#1070'_'#1045#1044#1048#1053#1048#1062#1059
    Parameters = <>
    Prepared = True
    Left = 88
    Top = 88
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#1084#1077#1089#1090#1086#1087#1086#1083#1086#1078)
    Left = 248
    Top = 57
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 304
    Top = 57
  end
  object ActionList1: TActionList
    Left = 136
    Top = 72
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 16449
      OnExecute = Action1Execute
    end
  end
end
