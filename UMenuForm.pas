unit UMenuForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TMenuForm = class(TForm)
    btnBack: TButton;
    procedure btnBackClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MenuForm: TMenuForm;

implementation
  uses ULoginForm;

{$R *.dfm}

procedure TMenuForm.btnBackClick(Sender: TObject);
begin
  self.Hide;
  LoginForm:= TLoginForm.Create(nil);
  LoginForm.Show;
end;



end.
