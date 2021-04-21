inherited frmGrupo: TfrmGrupo
  Caption = 'Grupos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcPrincipal: TPageControl
    ActivePage = tabData
    inherited tabGrid: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 684
      ExplicitHeight = 337
      inherited grdListagem: TDBGrid
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_GRP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GRUPO'
            Visible = True
          end>
      end
    end
    inherited tabData: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 684
      ExplicitHeight = 337
      object Label1: TLabel
        Left = 96
        Top = 88
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = dbId_Grp
      end
      object Label2: TLabel
        Left = 96
        Top = 128
        Width = 29
        Height = 13
        Caption = 'Grupo'
        FocusControl = dbGrupo
      end
      object dbId_Grp: TDBEdit
        Left = 96
        Top = 104
        Width = 134
        Height = 21
        DataField = 'ID_GRP'
        DataSource = dsPrincipal
        Enabled = False
        TabOrder = 0
      end
      object dbGrupo: TDBEdit
        Left = 96
        Top = 147
        Width = 394
        Height = 21
        CharCase = ecUpperCase
        DataField = 'GRUPO'
        DataSource = dsPrincipal
        TabOrder = 1
      end
    end
  end
  inherited qryPrincipal: TFDQuery
    Active = True
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.GeneratorName = 'GEN_GRUPO'
    UpdateOptions.AutoIncFields = 'ID_GRP'
    SQL.Strings = (
      'select '
      'id_grp,'
      'grupo'
      'from grupo')
    Left = 496
    Top = 72
    object qryPrincipalID_GRP: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID_GRP'
      Origin = 'ID_GRP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryPrincipalGRUPO: TStringField
      DisplayLabel = 'Grupo'
      FieldName = 'GRUPO'
      Origin = 'GRUPO'
      Required = True
      Size = 30
    end
  end
  inherited dsPrincipal: TDataSource
    Left = 552
    Top = 72
  end
end
