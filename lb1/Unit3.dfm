object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'FormAddRecord'
  ClientHeight = 184
  ClientWidth = 486
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 15
  object Label1: TLabel
    Left = 40
    Top = 16
    Width = 30
    Height = 15
    Caption = 'name'
  end
  object Label2: TLabel
    Left = 40
    Top = 56
    Width = 29
    Height = 15
    Caption = 'email'
  end
  object EditName: TEdit
    Left = 104
    Top = 13
    Width = 369
    Height = 23
    TabOrder = 0
  end
  object EditEmail: TEdit
    Left = 104
    Top = 53
    Width = 369
    Height = 23
    TabOrder = 1
  end
  object ButtonOk: TButton
    Left = 8
    Top = 104
    Width = 169
    Height = 41
    Caption = #1054#1082
    TabOrder = 2
    OnClick = ButtonOkClick
  end
  object ButtonCancel: TButton
    Left = 304
    Top = 104
    Width = 169
    Height = 41
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 3
    OnClick = ButtonCancelClick
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=desktopApp;Data Source=DESKTOP-05DB9SU\' +
      'SQLEXPRESS'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 224
    Top = 112
  end
  object ADOTable1: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'users'
    Left = 272
    Top = 108
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 184
    Top = 108
  end
end
