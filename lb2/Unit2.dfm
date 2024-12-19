object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 376
  ClientWidth = 451
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Имя: TLabel
    Left = 98
    Top = 81
    Width = 24
    Height = 15
    Caption = #1048#1084#1103
  end
  object Label6: TLabel
    Left = 144
    Top = 22
    Width = 187
    Height = 15
    Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1085#1086#1074#1086#1075#1086' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
  end
  object email: TLabel
    Left = 98
    Top = 137
    Width = 29
    Height = 15
    Caption = 'email'
  end
  object EditName: TEdit
    Left = 192
    Top = 78
    Width = 233
    Height = 23
    TabOrder = 0
  end
  object Button1: TButton
    Left = 264
    Top = 246
    Width = 153
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 66
    Top = 246
    Width = 145
    Height = 25
    Caption = #1053#1072#1079#1072#1076
    TabOrder = 2
    OnClick = Button2Click
  end
  object EditEmail: TEdit
    Left = 192
    Top = 134
    Width = 233
    Height = 23
    TabOrder = 3
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=desktopApp;Data Source=DESKTOP-05DB9SU\' +
      'SQLEXPRESS'
    Provider = 'SQLOLEDB.1'
    Left = 216
    Top = 296
  end
  object ADOTable1: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'users'
    Left = 328
    Top = 288
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 112
    Top = 296
  end
end
