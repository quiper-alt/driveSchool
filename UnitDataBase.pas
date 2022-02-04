unit UnitDataBase;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDataModule1 = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOTableUsers: TADOTable;
    DataSourceUsers: TDataSource;
    ADOTableUsersid: TAutoIncField;
    ADOTableUsersfirst_name: TWideStringField;
    ADOTableUserslast_name: TWideStringField;
    ADOTableUserspatronymic: TWideStringField;
    ADOTableUsersbirthday: TDateTimeField;
    ADOTableUsersgroup_id: TIntegerField;
    ADOTableGroups: TADOTable;
    DataSourceGroups: TDataSource;
    ADOTableGroupsid: TAutoIncField;
    ADOTableGroupsgroup_name: TWideStringField;
    ADOQuery1: TADOQuery;
    ADODataSetUsers: TADODataSet;
    ADOTableUserspassword: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}



end.
