object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 457
  ClientWidth = 647
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object name: TLabel
    Left = 42
    Top = 89
    Width = 30
    Height = 15
    Caption = 'name'
  end
  object Label6: TLabel
    Left = 168
    Top = 30
    Width = 211
    Height = 15
    Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1076#1072#1085#1085#1099#1093' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
  end
  object email: TLabel
    Left = 42
    Top = 153
    Width = 29
    Height = 15
    Caption = 'email'
  end
  object EditName: TEdit
    Left = 160
    Top = 86
    Width = 241
    Height = 23
    TabOrder = 0
  end
  object Button1: TButton
    Left = 184
    Top = 246
    Width = 153
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 184
    Top = 277
    Width = 153
    Height = 25
    Caption = #1053#1072#1079#1072#1076
    TabOrder = 2
    OnClick = Button2Click
  end
  object EditEmail: TEdit
    Left = 160
    Top = 150
    Width = 241
    Height = 23
    TabOrder = 3
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=desktopApp;Data Source=DESKTOP-05DB9SU\' +
      'SQLEXPRESS'
    Provider = 'SQLOLEDB.1'
    Left = 240
    Top = 312
  end
  object ADOTable1: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'users'
    Left = 352
    Top = 304
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 136
    Top = 312
  end
end
