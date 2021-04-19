object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Principal'
  ClientHeight = 252
  ClientWidth = 549
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mnuPrincipal
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object mnuPrincipal: TMainMenu
    Left = 80
    Top = 24
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object Produto1: TMenuItem
        Caption = 'Usu'#225'rio...'
        OnClick = Produto1Click
      end
      object Grupodeusurio1: TMenuItem
        Caption = 'Grupo de usu'#225'rio'
        OnClick = Grupodeusurio1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
    end
  end
end
