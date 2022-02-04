object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 432
  Width = 655
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\kakde\OneD' +
      'rive\'#1056#1072#1073#1086#1095#1080#1081' '#1089#1090#1086#1083'\DriveSchoolDelphi\drivingSchoolBd.mdb;Persist ' +
      'Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 104
    Top = 80
  end
  object ADOTableUsers: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Users'
    Left = 400
    Top = 88
    object ADOTableUsersid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ADOTableUsersfirst_name: TWideStringField
      FieldName = 'first_name'
      Size = 255
    end
    object ADOTableUserslast_name: TWideStringField
      FieldName = 'last_name'
      Size = 255
    end
    object ADOTableUserspatronymic: TWideStringField
      FieldName = 'patronymic'
      Size = 255
    end
    object ADOTableUsersbirthday: TDateTimeField
      FieldName = 'birthday'
    end
    object ADOTableUsersgroup_id: TIntegerField
      FieldName = 'group_id'
    end
    object ADOTableUserspassword: TWideStringField
      FieldName = 'password'
      Size = 50
    end
  end
  object DataSourceUsers: TDataSource
    DataSet = ADOTableUsers
    Left = 56
    Top = 176
  end
  object ADOTableGroups: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Groups'
    Left = 416
    Top = 144
    object ADOTableGroupsid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ADOTableGroupsgroup_name: TWideStringField
      FieldName = 'group_name'
      Size = 255
    end
  end
  object DataSourceGroups: TDataSource
    DataSet = ADOTableGroups
    Left = 408
    Top = 216
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    DataSource = DataSourceUsers
    Parameters = <>
    Left = 184
    Top = 264
  end
  object ADODataSetUsers: TADODataSet
    Parameters = <>
    Left = 408
    Top = 304
  end
end
