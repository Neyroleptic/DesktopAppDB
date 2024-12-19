object Form6: TForm6
  Left = 0
  Top = 0
  Caption = 'Form6'
  ClientHeight = 280
  ClientWidth = 413
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object name: TLabel
    Left = 26
    Top = 57
    Width = 105
    Height = 15
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1087#1088#1086#1076#1091#1082#1090#1072
  end
  object Label6: TLabel
    Left = 152
    Top = 22
    Width = 142
    Height = 15
    Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1087#1088#1086#1076#1091#1082#1090#1072
  end
  object price: TLabel
    Left = 26
    Top = 105
    Width = 28
    Height = 15
    Caption = #1062#1077#1085#1072
  end
  object EditName: TEdit
    Left = 152
    Top = 54
    Width = 241
    Height = 23
    TabOrder = 0
  end
  object Button1: TButton
    Left = 240
    Top = 158
    Width = 153
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 66
    Top = 158
    Width = 153
    Height = 25
    Caption = #1053#1072#1079#1072#1076
    TabOrder = 2
    OnClick = Button2Click
  end
  object EditPrice: TEdit
    Left = 152
    Top = 102
    Width = 241
    Height = 23
    TabOrder = 3
  end
  object ADOConnection2: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=desktopApp;Data Source=DESKTOP-05DB9SU\' +
      'SQLEXPRESS'
    Provider = 'SQLOLEDB.1'
    Left = 208
    Top = 205
  end
  object ADOTable2: TADOTable
    Connection = ADOConnection2
    CursorType = ctStatic
    TableName = 'products'
    Left = 128
    Top = 205
  end
  object DataSource2: TDataSource
    DataSet = ADOTable2
    Left = 304
    Top = 205
  end
end
