unit U_Grupo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_PadraoCrud, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Mask, Vcl.DBCtrls;

type
  TfrmGrupo = class(TfrmPadraoCRUD)
    qryPrincipalID_GRP: TIntegerField;
    qryPrincipalGRUPO: TStringField;
    Label1: TLabel;
    dbId_Grp: TDBEdit;
    Label2: TLabel;
    dbGrupo: TDBEdit;
    procedure btnIncluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGrupo: TfrmGrupo;

implementation

{$R *.dfm}

procedure TfrmGrupo.btnIncluirClick(Sender: TObject);
begin
  inherited;
  dbGrupo.SetFocus;
end;

end.
