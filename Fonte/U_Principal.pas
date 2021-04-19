unit U_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TfrmPrincipal = class(TForm)
    mnuPrincipal: TMainMenu;
    Cadastros1: TMenuItem;
    Produto1: TMenuItem;
    Grupodeusurio1: TMenuItem;
    N1: TMenuItem;
    procedure Produto1Click(Sender: TObject);
    procedure Grupodeusurio1Click(Sender: TObject);
  private
    { Private declarations }
    procedure Chama_FrmUsuario;
    procedure Chama_FrmGrupo;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses U_Usuario, U_Grupo;

{ TfrmPrincipal }

procedure TfrmPrincipal.Chama_FrmGrupo;
begin
    frmGrupo.Showmodal;
end;

procedure TfrmPrincipal.Chama_FrmUsuario;
begin
    frmUsuario.Showmodal;
end;

procedure TfrmPrincipal.Grupodeusurio1Click(Sender: TObject);
begin
    Chama_FrmGrupo;
end;

procedure TfrmPrincipal.Produto1Click(Sender: TObject);
begin
    Chama_FrmUsuario;
end;

end.
