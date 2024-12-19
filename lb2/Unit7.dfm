object Form7: TForm7
  Left = 0
  Top = 0
  Caption = 'Form7'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object Label6: TLabel
    Left = 176
    Top = 46
    Width = 146
    Height = 15
    Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1085#1086#1074#1086#1075#1086' '#1079#1072#1082#1072#1079#1072
  end
  object product: TLabel
    Left = 90
    Top = 128
    Width = 46
    Height = 15
    Caption = #1055#1088#1086#1076#1091#1082#1090
  end
  object user: TLabel
    Left = 90
    Top = 85
    Width = 77
    Height = 15
    Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
  end
  object quantity: TLabel
    Left = 90
    Top = 168
    Width = 65
    Height = 15
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
  end
  object Button1: TButton
    Left = 304
    Top = 206
    Width = 153
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 106
    Top = 206
    Width = 145
    Height = 25
    Caption = #1053#1072#1079#1072#1076
    TabOrder = 1
    OnClick = Button2Click
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 224
    Top = 125
    Width = 233
    Height = 23
    TabOrder = 2
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 224
    Top = 82
    Width = 233
    Height = 23
    TabOrder = 3
  end
  object EditQuantity: TEdit
    Left = 224
    Top = 165
    Width = 241
    Height = 23
    TabOrder = 4
  end
  object ADOConnection3: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=desktopApp;Data Source=DESKTOP-05DB9SU\' +
      'SQLEXPRESS'
    Provider = 'SQLOLEDB.1'
    Left = 168
    Top = 272
  end
  object ADOTable3: TADOTable
    Connection = ADOConnection3
    CursorType = ctStatic
    TableName = 'orders'
    Left = 264
    Top = 272
  end
  object DataSource3: TDataSource
    DataSet = ADOTable3
    Left = 344
    Top = 272
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=desktopApp;Data Source=DESKTOP-05DB9SU\' +
      'SQLEXPRESS'
    Provider = 'SQLOLEDB.1'
    Left = 452
    Top = 279
  end
  object ADOTable1: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'users'
    Left = 452
    Top = 335
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 540
    Top = 335
  end
  object ADOConnection2: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=desktopApp;Data Source=DESKTOP-05DB9SU\' +
      'SQLEXPRESS'
    Provider = 'SQLOLEDB.1'
    Left = 172
    Top = 349
  end
  object ADOTable2: TADOTable
    Connection = ADOConnection2
    CursorType = ctStatic
    TableName = 'products'
    Left = 268
    Top = 349
  end
  object DataSource2: TDataSource
    DataSet = ADOTable2
    OnDataChange = DataSource2DataChange
    Left = 348
    Top = 341
  end
end
