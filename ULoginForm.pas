unit ULoginForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TLoginForm = class(TForm)
    btnLogin: TButton;
    btnRegistration: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure btnLoginClick(Sender: TObject);
    procedure btnRegistrationClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LoginForm: TLoginForm;

implementation
uses UMenuForm, URegistrationForm;

{$R *.dfm}

procedure TLoginForm.btnLoginClick(Sender: TObject);
begin
  self.Hide;
  MenuForm:= TMenuForm.Create(nil);
  MenuForm.Show;
end;

procedure TLoginForm.btnRegistrationClick(Sender: TObject);
begin
  self.Hide;
  RegistrationForm:= TRegistrationForm.Create(nil);
  RegistrationForm.Show;
end;

end.
