program DriveSchoolProject;

uses
  Vcl.Forms,
  ULoginForm in 'ULoginForm.pas' {LoginForm},
  URegistrationForm in 'URegistrationForm.pas' {RegistrationForm},
  UMenuForm in 'UMenuForm.pas' {MenuForm},
  UnitDataBase in 'UnitDataBase.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TLoginForm, LoginForm);
  Application.CreateForm(TRegistrationForm, RegistrationForm);
  Application.CreateForm(TMenuForm, MenuForm);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
