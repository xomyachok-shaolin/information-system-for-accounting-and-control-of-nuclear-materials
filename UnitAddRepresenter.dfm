object Form3: TForm3
  Left = 0
  Top = 0
  Caption = #1057#1059#1080#1050' '#1071#1052' - '#1055#1088#1077#1076#1089#1090#1072#1074#1080#1090#1077#1083#1080' '#1087#1088#1077#1076#1087#1088#1080#1103#1090#1080#1081' - '#1044#1086#1073#1072#1074#1080#1090#1100
  ClientHeight = 217
  ClientWidth = 347
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
    Top = 182
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
    Height = 182
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 0
    object Label5: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 144
      Width = 104
      Height = 13
      Caption = #1055#1072#1089#1087#1086#1088#1090#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
    end
    object Label4: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 112
      Width = 89
      Height = 13
      Caption = #1058#1072#1073#1077#1083#1100#1085#1099#1081' '#1085#1086#1084#1077#1088
    end
    object Label3: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 80
      Width = 49
      Height = 13
      Caption = #1054#1090#1095#1077#1089#1090#1074#1086
    end
    object Label2: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 48
      Width = 19
      Height = 13
      Caption = #1048#1084#1103
    end
    object Label1: TLabel
      AlignWithMargins = True
      Left = 16
      Top = 16
      Width = 44
      Height = 13
      Caption = #1060#1072#1084#1080#1083#1080#1103
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
    DataSource = Form2.DataSourceRepresent
    ProcedureName = 'MASS_19.'#1057#1059#1048#1050'_'#1071#1052'.'#1044#1054#1041#1040#1042#1048#1058#1068'_'#1055#1056#1045#1044#1057#1058#1040#1042#1048#1058#1045#1051#1071
    Parameters = <
      item
        Name = #1055#1056#1045#1044#1055#1056#1048#1071#1058#1048#1045
        DataType = ftBCD
        Precision = 10
        Value = 0c
      end
      item
        Name = #1055#1056'_'#1060#1040#1052#1048#1051#1048#1071
        DataType = ftString
        Size = 30
        Value = '0'
      end
      item
        Name = #1055#1056'_'#1048#1052#1071
        DataType = ftString
        Size = 25
        Value = '0'
      end
      item
        Name = #1055#1056'_'#1054#1058#1063#1045#1057#1058#1042#1054
        DataType = ftString
        Size = 30
        Value = '0'
      end
      item
        Name = #1055#1056'_'#1055#1040#1057#1055#1054#1056#1058
        DataType = ftString
        Size = 16
        Value = '0'
      end
      item
        Name = #1058#1040#1041#1045#1051#1068#1053#1067#1049'_'#1053#1054#1052#1045#1056
        DataType = ftString
        Size = 16
        Value = '0'
      end>
    Left = 96
    Top = 160
  end
  object ActionList1: TActionList
    Left = 40
    Top = 128
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 16449
      OnExecute = Action1Execute
    end
  end
end
