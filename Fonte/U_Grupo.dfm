inherited frmGrupo: TfrmGrupo
  Caption = 'Grupo de usu'#225'rios'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcPrincipal: TPageControl
    ActivePage = tabData
    inherited tabGrid: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 684
      ExplicitHeight = 337
    end
    inherited tabData: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 684
      ExplicitHeight = 337
      object Label1: TLabel
        Left = 88
        Top = 88
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 88
        Top = 128
        Width = 73
        Height = 13
        Caption = 'Nome do grupo'
        FocusControl = DBEdit2
      end
      object DBEdit1: TDBEdit
        Left = 88
        Top = 104
        Width = 134
        Height = 21
        DataField = 'id_grp'
        DataSource = dsGrid
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 88
        Top = 144
        Width = 394
        Height = 21
        DataField = 'grupo'
        DataSource = dsGrid
        TabOrder = 1
      end
    end
  end
  inherited qryGrid: TFDQuery
    Active = True
    SQL.Strings = (
      'select '
      'id_grp,'
      'grupo'
      'from grupo')
    Left = 512
    Top = 72
    object qryGridid_grp: TFDAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'id_grp'
      Origin = 'id_grp'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object qryGridgrupo: TStringField
      DisplayLabel = 'Nome do grupo'
      FieldName = 'grupo'
      Origin = 'grupo'
      Required = True
      Size = 30
    end
  end
  object dsGrid: TDataSource
    DataSet = qryGrid
    Left = 568
    Top = 72
  end
end
