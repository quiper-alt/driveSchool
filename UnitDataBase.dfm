object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 288
  Width = 281
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\kakde\OneD' +
      'rive\'#1056#1072#1073#1086#1095#1080#1081' '#1089#1090#1086#1083'\DriveSchoolDelphi\drivingSchoolBd.mdb;Persist ' +
      'Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 112
    Top = 16
  end
  object ADOTableUsers: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Users'
    Left = 120
    Top = 96
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
    object ADOTableUsershash_password: TWideMemoField
      FieldName = 'hash_password'
      BlobType = ftWideMemo
    end
    object ADOTableUsersbirthday: TDateTimeField
      FieldName = 'birthday'
    end
    object ADOTableUsersgroup_id: TIntegerField
      FieldName = 'group_id'
    end
  end
  object DataSourceUsers: TDataSource
    DataSet = ADOTableUsers
    Left = 120
    Top = 168
  end
  object ADOTableGroups: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Groups'
    Left = 208
    Top = 104
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
    Left = 208
    Top = 176
  end
end
