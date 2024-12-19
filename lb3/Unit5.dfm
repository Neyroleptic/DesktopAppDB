object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Form5'
  ClientHeight = 335
  ClientWidth = 590
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Имя: TLabel
    Left = 74
    Top = 57
    Width = 105
    Height = 15
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1087#1088#1086#1076#1091#1082#1090#1072
  end
  object Label6: TLabel
    Left = 200
    Top = 14
    Width = 162
    Height = 15
    Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1085#1086#1074#1086#1075#1086' '#1087#1088#1086#1076#1091#1082#1090#1072
  end
  object Price: TLabel
    Left = 74
    Top = 97
    Width = 28
    Height = 15
    Caption = #1062#1077#1085#1072
  end
  object EditName: TEdit
    Left = 200
    Top = 54
    Width = 233
    Height = 23
    TabOrder = 0
  end
  object Button1: TButton
    Left = 328
    Top = 142
    Width = 153
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 160
    Top = 142
    Width = 145
    Height = 25
    Caption = #1053#1072#1079#1072#1076
    TabOrder = 2
    OnClick = Button2Click
  end
  object EditPrice: TEdit
    Left = 200
    Top = 94
    Width = 233
    Height = 23
    TabOrder = 3
  end
  object ADOConnection2: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=desktopApp;Data Source=DESKTOP-05DB9SU\' +
      'SQLEXPRESS'
    Provider = 'SQLOLEDB.1'
    Left = 256
    Top = 261
  end
  object ADOTable2: TADOTable
    Connection = ADOConnection2
    CursorType = ctStatic
    TableName = 'products'
    Left = 176
    Top = 261
  end
  object DataSource2: TDataSource
    DataSet = ADOTable2
    Left = 352
    Top = 261
  end
end
