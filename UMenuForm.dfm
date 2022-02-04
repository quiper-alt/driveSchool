object MenuForm: TMenuForm
  Left = 0
  Top = 0
  Caption = 'MenuForm'
  ClientHeight = 345
  ClientWidth = 364
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnProfile: TButton
    Left = 80
    Top = 72
    Width = 200
    Height = 41
    Caption = #1055#1088#1086#1092#1080#1083#1100
    TabOrder = 0
  end
  object btnStudy: TButton
    Left = 80
    Top = 136
    Width = 200
    Height = 41
    Caption = #1054#1073#1091#1095#1077#1085#1080#1077
    TabOrder = 1
  end
  object btnExam: TButton
    Left = 80
    Top = 200
    Width = 200
    Height = 41
    Caption = #1069#1082#1079#1072#1084#1077#1085
    TabOrder = 2
  end
  object btnBack: TButton
    Left = 112
    Top = 272
    Width = 145
    Height = 41
    Caption = #1042#1099#1081#1090#1080
    TabOrder = 3
    OnClick = btnBackClick
  end
end
