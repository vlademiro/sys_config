unit U_Usuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_PadraoCrud, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmUsuario = class(TfrmPadraoCRUD)
    qryPrincipalID_USR: TFDAutoIncField;
    qryPrincipalUSUARIO: TStringField;
    qryPrincipalLOGIN: TStringField;
    qryPrincipalPASS: TStringField;
    qryPrincipalID_GRP: TIntegerField;
    Label1: TLabel;
    dbId_Usr: TDBEdit;
    Label2: TLabel;
    dbUsuario: TDBEdit;
    Label3: TLabel;
    dbLogin: TDBEdit;
    Label4: TLabel;
    dbSenha: TDBEdit;
    Label5: TLabel;
    dbId_Grp: TDBLookupComboBox;
    qryGrupo: TFDQuery;
    dsGrupo: TDataSource;
    qryPrincipalGRUPO: TStringField;
    dbSearch: TDBLookupComboBox;
    Label6: TLabel;
    procedure btnIncluirClick(Sender: TObject);
    procedure dbSearchClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUsuario: TfrmUsuario;

implementation

{$R *.dfm}

uses U_DM;

procedure TfrmUsuario.btnIncluirClick(Sender: TObject);
begin
  inherited;
    dbUsuario.SetFocus;
end;

procedure TfrmUsuario.dbSearchClick(Sender: TObject);
begin
  inherited;
  qryPrincipal.Close;
  qryPrincipal.ParamByName('ID_GRP').AsInteger := dbSearch.KeyValue;
  qryPrincipal.Open;
end;

procedure TfrmUsuario.FormActivate(Sender: TObject);
begin
  inherited;
    qryGrupo.Active := true;
    qryGrupo.Open;
end;

procedure TfrmUsuario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  qryGrupo.Close;
end;



end.
