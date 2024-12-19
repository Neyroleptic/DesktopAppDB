object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 547
  ClientWidth = 1003
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  TextHeight = 15
  object DBGrid1: TDBGrid
    Left = 8
    Top = 111
    Width = 392
    Height = 122
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 8
    Top = 18
    Width = 129
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 49
    Width = 129
    Height = 25
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 8
    Top = 80
    Width = 129
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 3
    OnClick = Button3Click
  end
  object Выход: TButton
    Left = 802
    Top = 494
    Width = 193
    Height = 25
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 4
    OnClick = ВыходClick
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 239
    Width = 392
    Height = 122
    DataSource = DataSource2
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object Button4: TButton
    Left = 8
    Top = 384
    Width = 129
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 6
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 8
    Top = 415
    Width = 129
    Height = 25
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100
    TabOrder = 7
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 8
    Top = 446
    Width = 129
    Height = 28
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 8
    OnClick = Button6Click
  end
  object DBGrid3: TDBGrid
    Left = 406
    Top = 111
    Width = 589
    Height = 250
    DataSource = DataSource3
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'order_id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'user_id'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'product_id'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'quantity'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'order_date'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'login'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'product_name'
        Visible = True
      end>
  end
  object Button7: TButton
    Left = 489
    Top = 18
    Width = 121
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 10
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 489
    Top = 49
    Width = 121
    Height = 25
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100
    TabOrder = 11
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 489
    Top = 80
    Width = 121
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 12
    OnClick = Button9Click
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=desktopApp;Data Source=DESKTOP-05DB9SU\' +
      'SQLEXPRESS'
    Provider = 'SQLOLEDB.1'
    Left = 512
    Top = 383
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'users'
    Left = 416
    Top = 399
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 616
    Top = 399
  end
  object ADOConnection2: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=desktopApp;Data Source=DESKTOP-05DB9SU\' +
      'SQLEXPRESS'
    Provider = 'SQLOLEDB.1'
    Left = 840
    Top = 384
  end
  object ADOTable2: TADOTable
    Active = True
    Connection = ADOConnection2
    CursorType = ctStatic
    TableName = 'products'
    Left = 752
    Top = 384
  end
  object DataSource2: TDataSource
    DataSet = ADOTable2
    Left = 752
    Top = 448
  end
  object ADOConnection3: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=desktopApp;Data Source=DESKTOP-05DB9SU\' +
      'SQLEXPRESS'
    Provider = 'SQLOLEDB.1'
    Left = 336
    Top = 456
  end
  object ADOTable3: TADOTable
    Active = True
    Connection = ADOConnection3
    CursorType = ctStatic
    TableName = 'orders'
    Left = 264
    Top = 392
    object ADOTable3order_id: TAutoIncField
      FieldName = 'order_id'
      ReadOnly = True
    end
    object ADOTable3user_id: TIntegerField
      FieldName = 'user_id'
    end
    object ADOTable3product_id: TIntegerField
      FieldName = 'product_id'
    end
    object ADOTable3quantity: TIntegerField
      FieldName = 'quantity'
    end
    object ADOTable3order_date: TDateTimeField
      FieldName = 'order_date'
    end
    object ADOTable3login: TStringField
      FieldKind = fkLookup
      FieldName = 'login'
      LookupDataSet = ADOTable1
      LookupKeyFields = 'user_id'
      LookupResultField = 'name'
      KeyFields = 'user_id'
      Lookup = True
    end
    object ADOTable3product_name: TStringField
      FieldKind = fkLookup
      FieldName = 'product_name'
      LookupDataSet = ADOTable2
      LookupKeyFields = 'product_id'
      LookupResultField = 'name'
      KeyFields = 'product_id'
      Lookup = True
    end
  end
  object DataSource3: TDataSource
    DataSet = ADOTable3
    Left = 344
    Top = 392
  end
  object MainMenu1: TMainMenu
    Left = 552
    Top = 480
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N2: TMenuItem
        Caption = #1055#1088#1086#1089#1084#1086#1090#1088' '#1086#1090#1095#1077#1090#1072
        OnClick = N2Click
      end
    end
  end
end
