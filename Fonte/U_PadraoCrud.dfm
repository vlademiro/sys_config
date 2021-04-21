object frmPadraoCRUD: TfrmPadraoCRUD
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'frmPadraoCRUD'
  ClientHeight = 438
  ClientWidth = 692
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object pnlRodape: TPanel
    Left = 0
    Top = 365
    Width = 692
    Height = 73
    Align = alBottom
    TabOrder = 0
    object btnIncluir: TBitBtn
      Left = 32
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Incluir'
      TabOrder = 0
      OnClick = btnIncluirClick
    end
    object btnAlterar: TBitBtn
      Left = 140
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Alterar'
      TabOrder = 1
      OnClick = btnAlterarClick
    end
    object btnExcluir: TBitBtn
      Left = 249
      Top = 24
      Width = 81
      Height = 25
      Caption = 'Excluir'
      TabOrder = 2
      OnClick = btnExcluirClick
    end
    object btnCancelar: TBitBtn
      Left = 358
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 3
      OnClick = btnCancelarClick
    end
    object btnGravar: TBitBtn
      Left = 467
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Gravar'
      TabOrder = 4
      OnClick = btnGravarClick
    end
    object btnSair: TBitBtn
      Left = 576
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 5
      OnClick = btnSairClick
    end
  end
  object pgcPrincipal: TPageControl
    Left = 0
    Top = 0
    Width = 692
    Height = 365
    ActivePage = tabGrid
    Align = alClient
    TabOrder = 1
    object tabGrid: TTabSheet
      Caption = 'Listagem'
      object grdListagem: TDBGrid
        Left = 0
        Top = 81
        Width = 684
        Height = 256
        Align = alClient
        DataSource = dsPrincipal
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object pnlBusca: TPanel
        Left = 0
        Top = 0
        Width = 684
        Height = 81
        Align = alTop
        TabOrder = 1
      end
      object btnBuscar: TBitBtn
        Left = 572
        Top = 29
        Width = 75
        Height = 25
        Caption = 'Buscar'
        TabOrder = 2
      end
    end
    object tabData: TTabSheet
      Caption = 'Dados'
      ImageIndex = 1
    end
  end
  object qryPrincipal: TFDQuery
    Connection = DM.con_admin
    Left = 440
    Top = 144
  end
  object dsPrincipal: TDataSource
    DataSet = qryPrincipal
    Left = 504
    Top = 144
  end
end
