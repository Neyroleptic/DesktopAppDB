object Form8: TForm8
  Left = 0
  Top = 0
  Caption = 'Form8'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label6: TLabel
    Left = 272
    Top = 46
    Width = 99
    Height = 15
    Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077' '#1079#1072#1082#1072#1079#1072
  end
  object product: TLabel
    Left = 138
    Top = 128
    Width = 46
    Height = 15
    Caption = #1055#1088#1086#1076#1091#1082#1090
  end
  object user: TLabel
    Left = 138
    Top = 85
    Width = 77
    Height = 15
    Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
  end
  object quantity: TLabel
    Left = 138
    Top = 176
    Width = 65
    Height = 15
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
  end
  object Button1: TButton
    Left = 336
    Top = 214
    Width = 153
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 130
    Top = 214
    Width = 145
    Height = 25
    Caption = #1053#1072#1079#1072#1076
    TabOrder = 1
    OnClick = Button2Click
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 272
    Top = 125
    Width = 233
    Height = 23
    TabOrder = 2
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 272
    Top = 82
    Width = 233
    Height = 23
    TabOrder = 3
  end
  object EditQuantity: TEdit
    Left = 272
    Top = 173
    Width = 241
    Height = 23
    TabOrder = 4
  end
  object ADOConnection3: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=desktopApp;Data Source=DESKTOP-05DB9SU\' +
      'SQLEXPRESS'
    Provider = 'SQLOLEDB.1'
    Left = 224
    Top = 248
  end
  object ADOTable3: TADOTable
    Connection = ADOConnection3
    CursorType = ctStatic
    TableName = 'orders'
    Left = 320
    Top = 248
  end
  object DataSource3: TDataSource
    DataSet = ADOTable3
    Left = 400
    Top = 248
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=desktopApp;Data Source=DESKTOP-05DB9SU\' +
      'SQLEXPRESS'
    Provider = 'SQLOLEDB.1'
    Left = 224
    Top = 351
  end
  object ADOTable1: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'users'
    Left = 128
    Top = 343
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 284
    Top = 351
  end
  object ADOConnection2: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=desktopApp;Data Source=DESKTOP-05DB9SU\' +
      'SQLEXPRESS'
    Provider = 'SQLOLEDB.1'
    Left = 348
    Top = 392
  end
  object ADOTable2: TADOTable
    Connection = ADOConnection2
    CursorType = ctStatic
    TableName = 'products'
    Left = 372
    Top = 328
  end
  object DataSource2: TDataSource
    DataSet = ADOTable2
    Left = 428
    Top = 368
  end
end
