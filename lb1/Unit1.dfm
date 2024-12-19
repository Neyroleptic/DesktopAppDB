object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'FormMain'
  ClientHeight = 475
  ClientWidth = 1040
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 15
  object LabelName: TLabel
    Left = 49
    Top = 303
    Width = 30
    Height = 15
    Caption = 'name'
    Visible = False
  end
  object LabelEmail: TLabel
    Left = 200
    Top = 303
    Width = 29
    Height = 15
    Caption = 'email'
    Visible = False
  end
  object ButtonExit: TButton
    Left = 928
    Top = 424
    Width = 85
    Height = 43
    Caption = #1042#1099#1093#1086#1076
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBrown
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    Style = bsCommandLink
    TabOrder = 0
    StyleName = 'Windows'
    OnClick = ButtonExitClick
  end
  object ButtonAdd: TButton
    Left = 798
    Top = 16
    Width = 129
    Height = 49
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 1
    OnClick = ButtonAddClick
  end
  object ButtonEdit: TButton
    Left = 798
    Top = 71
    Width = 129
    Height = 49
    Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
    TabOrder = 2
    OnClick = ButtonEditClick
  end
  object ButtonDelete: TButton
    Left = 798
    Top = 126
    Width = 129
    Height = 49
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 3
    OnClick = ButtonDeleteClick
  end
  object EditName: TEdit
    Left = 8
    Top = 324
    Width = 121
    Height = 23
    TabOrder = 4
    Visible = False
  end
  object EditEmail: TEdit
    Left = 167
    Top = 324
    Width = 121
    Height = 23
    TabOrder = 5
    Visible = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 753
    Height = 289
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=desktopApp;Data Source=DESKTOP-05DB9SU\' +
      'SQLEXPRESS'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 863
    Top = 184
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'users'
    Left = 831
    Top = 184
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 799
    Top = 184
  end
end
