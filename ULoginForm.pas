unit ULoginForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TLoginForm = class(TForm)
    btnLogin: TButton;
    btnRegistration: TButton;
    EditName: TEdit;
    EditPassword: TEdit;
    ComboBoxGroup: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure btnLoginClick(Sender: TObject);
    procedure btnRegistrationClick(Sender: TObject);
    procedure ButtonAboutProgramClick(Sender: TObject);
    procedure CreateFrom(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LoginForm: TLoginForm;


implementation
uses UMenuForm, URegistrationForm, UnitDataBase;

{$R *.dfm}

procedure TLoginForm.btnLoginClick(Sender: TObject);
begin

  if not UnitDataBase.DataModule1.ADOTableUsers.Locate('first_name;password', VarArrayOf([editName.Text, editPassword.Text]), []) then
  ShowMessage(editName.Text + ' ' + editPassword.Text + ' not found')
  else
  begin;
  ShowMessage(' Нашел тебя ');
  self.Hide;
  MenuForm:= TMenuForm.Create(nil);
  MenuForm.Show;
  end;

end;



procedure TLoginForm.btnRegistrationClick(Sender: TObject);
begin
  self.Hide;
  RegistrationForm:= TRegistrationForm.Create(nil);
  RegistrationForm.Show;
end;

procedure TLoginForm.ButtonAboutProgramClick(Sender: TObject);
begin
ShowMessage('Автошкола. Здесь обучают вождению.');
end;

procedure TLoginForm.CreateFrom(Sender: TObject);
begin

  while not UnitDataBase.DataModule1.ADOTableGroups.Eof do begin
  ComboBoxGroup.Items.Add(UnitDataBase.DataModule1.ADOTableGroups.FieldByName('group_name').AsString);
  UnitDataBase.DataModule1.ADOTableGroups.Next;
  end;
end;

end.
