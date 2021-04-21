unit U_PadraoCrud;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Datasnap.Provider,
  Datasnap.DBClient;

type
  TfrmPadraoCRUD = class(TForm)
    pnlRodape: TPanel;
    pgcPrincipal: TPageControl;
    tabGrid: TTabSheet;
    tabData: TTabSheet;
    grdListagem: TDBGrid;
    btnIncluir: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnCancelar: TBitBtn;
    btnGravar: TBitBtn;
    btnSair: TBitBtn;
    pnlBusca: TPanel;
    btnBuscar: TBitBtn;
    qryPrincipal: TFDQuery;
    dsPrincipal: TDataSource;
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
    procedure ModoGrid;
    procedure ModoForm;
  public
    { Public declarations }
  end;

var
  frmPadraoCRUD: TfrmPadraoCRUD;

implementation

{$R *.dfm}

uses U_DM;

procedure TfrmPadraoCRUD.btnAlterarClick(Sender: TObject);
begin


  try
    qryPrincipal.Edit;
    ModoForm;
  except
    on E: Exception do
    begin
      messagedlg(E.ClassName + ': ' + E.Message, mtError, [mbOk],0 );
    end;

  end;


end;

procedure TfrmPadraoCRUD.btnCancelarClick(Sender: TObject);
begin

  try
    qryPrincipal.Cancel;
    ModoGrid;
  except
    on E: Exception do
    begin
      messagedlg(E.ClassName + ': ' + E.Message, mtError, [mbOk],0 );
    end;

  end;


end;

procedure TfrmPadraoCRUD.btnExcluirClick(Sender: TObject);
begin
    try
      qryPrincipal.Delete;
      qryPrincipal.Refresh; // TODO:Redundancia ??
    except
        on E: Exception do
        begin
          messagedlg(E.ClassName + ': ' + E.Message, mtError, [mbOk],0 );
        end;

    end;


end;

procedure TfrmPadraoCRUD.btnGravarClick(Sender: TObject);
begin

    try
        qryPrincipal.Post;
        qryPrincipal.Refresh; // TODO:Redundancia ??
        ModoGrid;
    except
        on E: Exception do
        begin
          messagedlg(E.ClassName + ': ' + E.Message, mtError, [mbOk],0 );
        end;

    end;

end;

procedure TfrmPadraoCRUD.btnIncluirClick(Sender: TObject);
begin

    try
        qryPrincipal.Append;
        ModoForm;
    except
        on E: Exception do
        begin
          messagedlg(E.ClassName + ': ' + E.Message, mtError, [mbOk],0 );
        end;

    end;
end;

procedure TfrmPadraoCRUD.btnSairClick(Sender: TObject);
begin
    qryPrincipal.Close;
    qryPrincipal.Active := false;
    Close;
    Sender := nil;
end;


procedure TfrmPadraoCRUD.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    qryPrincipal.Close;
    qryPrincipal.Active := false;
    Sender := nil;
end;

procedure TfrmPadraoCRUD.FormCreate(Sender: TObject);
begin
    qryPrincipal.Active := true;
    qryPrincipal.Open;
    ModoGrid;
end;

procedure TfrmPadraoCRUD.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if Key=#13 then begin
        Key := #0;
        Perform(WM_NEXTDLGCTL,0,0);
      end;
    end;

procedure TfrmPadraoCRUD.ModoForm;
begin
     tabGrid.TabVisible := false;
     tabData.TabVisible := true;
     pgcPrincipal.ActivePage := (tabData);

     btnIncluir.Enabled := false;
     btnAlterar.Enabled := false;
     btnExcluir.Enabled := false;
     btnCancelar.Enabled := true;
     btnGravar.Enabled := true;
     btnSair.Enabled := false;
end;

procedure TfrmPadraoCRUD.ModoGrid;
begin

    tabGrid.TabVisible := true;
    tabData.TabVisible := false;
    pgcPrincipal.ActivePage := (tabGrid);

    btnIncluir.Enabled := true;
    btnAlterar.Enabled := true;
    btnExcluir.Enabled := true;
    btnCancelar.Enabled := false;
    btnGravar.Enabled := false;
    btnSair.Enabled := true;

end;

end.
