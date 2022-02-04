unit URegistrationForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls;

type
  TRegistrationForm = class(TForm)
    btnDoneRegistr: TButton;
    btnBack: TButton;
    editName: TEdit;
    editSurname: TEdit;
    editOtchestvo: TEdit;
    DateTimePicker1: TDateTimePicker;
    comboBoxGroups: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    editPassword: TEdit;
    Label7: TLabel;
    procedure btnBackClick(Sender: TObject);
    procedure btnDoneRegistrClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RegistrationForm: TRegistrationForm;

implementation
  uses ULoginForm, UnitDataBase;

{$R *.dfm}




procedure TRegistrationForm.btnBackClick(Sender: TObject);
begin
  self.Hide;
  LoginForm:= TLoginForm.Create(nil);
  LoginForm.Show;
end;

procedure TRegistrationForm.btnDoneRegistrClick(Sender: TObject);

begin

UnitDataBase.DataModule1.ADOTableUsers.Append;
UnitDataBase.DataModule1.ADOTableUsers.FieldByName('first_name').AsString:=editName.Text;
UnitDataBase.DataModule1.ADOTableUsers.FieldByName('last_name').AsString:=editSurname.Text;
UnitDataBase.DataModule1.ADOTableUsers.FieldByName('patronymic').AsString:=editOtchestvo.Text;
UnitDataBase.DataModule1.ADOTableUsers.FieldByName('group_id').AsInteger:=StrToInt(comboBoxGroups.Text);
UnitDataBase.DataModule1.ADOTableUsers.FieldByName('birthday').AsDateTime:=DateTimePicker1.DateTime;
UnitDataBase.DataModule1.ADOTableUsers.FieldByName('hash_password').AsString:=editPassword.Text;
UnitDataBase.DataModule1.ADOTableUsers.Post;
UnitDataBase.DataModule1.ADOTableUsers.Refresh;
end;


end.
