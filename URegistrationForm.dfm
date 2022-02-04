object RegistrationForm: TRegistrationForm
  Left = 0
  Top = 0
  Caption = 'RegistrationForm'
  ClientHeight = 473
  ClientWidth = 387
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 78
    Top = 83
    Width = 19
    Height = 13
    Caption = #1048#1084#1103
  end
  object Label2: TLabel
    Left = 53
    Top = 123
    Width = 44
    Height = 13
    Caption = #1060#1072#1084#1080#1083#1080#1103
  end
  object Label3: TLabel
    Left = 48
    Top = 172
    Width = 49
    Height = 13
    Caption = #1054#1090#1095#1077#1089#1090#1074#1086
  end
  object Label4: TLabel
    Left = 48
    Top = 227
    Width = 51
    Height = 13
    Caption = #8470#1043#1088#1091#1087#1087#1099
  end
  object Label5: TLabel
    Left = 17
    Top = 261
    Width = 80
    Height = 13
    Caption = #1044#1072#1090#1072' '#1056#1086#1078#1076#1077#1085#1080#1103
  end
  object Label6: TLabel
    Left = 104
    Top = 8
    Width = 188
    Height = 40
    Caption = #1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 40
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 61
    Top = 305
    Width = 37
    Height = 13
    Caption = #1055#1072#1088#1086#1083#1100
  end
  object btnDoneRegistr: TButton
    Left = 136
    Top = 383
    Width = 153
    Height = 25
    Caption = #1047#1072#1088#1077#1075#1080#1089#1090#1088#1080#1088#1086#1074#1072#1090#1100#1089#1103
    TabOrder = 0
    OnClick = btnDoneRegistrClick
  end
  object btnBack: TButton
    Left = 162
    Top = 414
    Width = 75
    Height = 25
    Caption = #1053#1072#1079#1072#1076
    TabOrder = 1
    OnClick = btnBackClick
  end
  object editName: TEdit
    Left = 103
    Top = 80
    Width = 189
    Height = 21
    TabOrder = 2
  end
  object editSurname: TEdit
    Left = 103
    Top = 120
    Width = 189
    Height = 21
    TabOrder = 3
  end
  object editOtchestvo: TEdit
    Left = 103
    Top = 169
    Width = 189
    Height = 21
    TabOrder = 4
  end
  object DateTimePicker1: TDateTimePicker
    Left = 103
    Top = 261
    Width = 186
    Height = 21
    Date = 44538.000000000000000000
    Time = 0.650757685187272700
    TabOrder = 5
  end
  object comboBoxGroups: TComboBox
    Left = 103
    Top = 224
    Width = 189
    Height = 21
    TabOrder = 6
  end
  object editPassword: TEdit
    Left = 104
    Top = 302
    Width = 189
    Height = 21
    TabOrder = 7
  end
end
