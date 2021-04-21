program Sys_Config;

uses
  Vcl.Forms,
  U_Login in '..\Fonte\U_Login.pas' {frmLogin},
  U_Principal in '..\Fonte\U_Principal.pas' {frmPrincipal},
  U_DM in '..\Fonte\U_DM.pas' {DM: TDataModule},
  U_PadraoCrud in '..\Fonte\U_PadraoCrud.pas' {frmPadraoCRUD},
  U_Grupo in '..\Fonte\U_Grupo.pas' {frmGrupo},
  U_Usuario in '..\Fonte\U_Usuario.pas' {frmUsuario};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmGrupo, frmGrupo);
  Application.CreateForm(TfrmUsuario, frmUsuario);
  Application.Run;
end.
