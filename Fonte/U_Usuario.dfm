inherited frmUsuario: TfrmUsuario
  Caption = 'Usu'#225'rios'
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcPrincipal: TPageControl
    inherited tabGrid: TTabSheet
      object Label6: TLabel [0]
        Left = 28
        Top = 7
        Width = 29
        Height = 13
        Caption = 'Grupo'
      end
      inherited pnlBusca: TPanel [1]
      end
      inherited grdListagem: TDBGrid [2]
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_USR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USUARIO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GRUPO'
            Title.Caption = 'Grupo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LOGIN'
            Visible = True
          end>
      end
      inherited btnBuscar: TBitBtn
        Visible = False
      end
      object dbSearch: TDBLookupComboBox
        Left = 28
        Top = 29
        Width = 510
        Height = 21
        KeyField = 'ID_GRP'
        ListField = 'GRUPO'
        ListSource = dsGrupo
        TabOrder = 3
        OnClick = dbSearchClick
      end
    end
    inherited tabData: TTabSheet
      object Label1: TLabel
        Left = 56
        Top = 48
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = dbId_Usr
      end
      object Label2: TLabel
        Left = 56
        Top = 88
        Width = 36
        Height = 13
        Caption = 'Usu'#225'rio'
        FocusControl = dbUsuario
      end
      object Label3: TLabel
        Left = 56
        Top = 128
        Width = 25
        Height = 13
        Caption = 'Login'
        FocusControl = dbLogin
      end
      object Label4: TLabel
        Left = 56
        Top = 168
        Width = 30
        Height = 13
        Caption = 'Senha'
        FocusControl = dbSenha
      end
      object Label5: TLabel
        Left = 56
        Top = 208
        Width = 29
        Height = 13
        Caption = 'Grupo'
      end
      object dbId_Usr: TDBEdit
        Left = 56
        Top = 64
        Width = 134
        Height = 21
        DataField = 'ID_USR'
        DataSource = dsPrincipal
        TabOrder = 0
      end
      object dbUsuario: TDBEdit
        Left = 56
        Top = 104
        Width = 361
        Height = 21
        CharCase = ecUpperCase
        DataField = 'USUARIO'
        DataSource = dsPrincipal
        TabOrder = 1
      end
      object dbLogin: TDBEdit
        Left = 56
        Top = 144
        Width = 134
        Height = 21
        DataField = 'LOGIN'
        DataSource = dsPrincipal
        TabOrder = 2
      end
      object dbSenha: TDBEdit
        Left = 56
        Top = 184
        Width = 134
        Height = 21
        DataField = 'PASS'
        DataSource = dsPrincipal
        PasswordChar = '*'
        TabOrder = 3
      end
      object dbId_Grp: TDBLookupComboBox
        Left = 56
        Top = 227
        Width = 361
        Height = 21
        DataField = 'ID_GRP'
        DataSource = dsPrincipal
        KeyField = 'ID_GRP'
        ListField = 'GRUPO'
        ListSource = dsGrupo
        TabOrder = 4
      end
    end
  end
  inherited qryPrincipal: TFDQuery
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GEN_USUARIO'
    UpdateOptions.AutoIncFields = 'ID_USR'
    SQL.Strings = (
      'select '
      'id_usr,'
      'usuario,'
      'login,'
      'pass,'
      'id_grp'
      'from usuario'
      'where id_grp=:id_grp'
      'order by usuario'
      '')
    Left = 472
    Top = 208
    ParamData = <
      item
        Name = 'ID_GRP'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryPrincipalID_USR: TFDAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID_USR'
      Origin = 'ID_USR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object qryPrincipalUSUARIO: TStringField
      DisplayLabel = 'Usu'#225'rio'
      DisplayWidth = 50
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Required = True
      Size = 100
    end
    object qryPrincipalGRUPO: TStringField
      FieldKind = fkLookup
      FieldName = 'GRUPO'
      LookupDataSet = qryGrupo
      LookupKeyFields = 'ID_GRP'
      LookupResultField = 'GRUPO'
      KeyFields = 'ID_GRP'
      Size = 30
      Lookup = True
    end
    object qryPrincipalLOGIN: TStringField
      DisplayLabel = 'Login'
      FieldName = 'LOGIN'
      Origin = 'LOGIN'
      Required = True
      Size = 30
    end
    object qryPrincipalPASS: TStringField
      DisplayLabel = 'Senha'
      DisplayWidth = 30
      FieldName = 'PASS'
      Origin = 'PASS'
      Required = True
      Size = 100
    end
    object qryPrincipalID_GRP: TIntegerField
      DisplayLabel = 'Grupo'
      FieldName = 'ID_GRP'
      Origin = 'ID_GRP'
      Required = True
    end
  end
  inherited dsPrincipal: TDataSource
    Left = 528
    Top = 264
  end
  object qryGrupo: TFDQuery
    Active = True
    Connection = DM.con_admin
    SQL.Strings = (
      'select'
      'id_grp, grupo'
      'from grupo'
      'order by grupo')
    Left = 528
    Top = 208
  end
  object dsGrupo: TDataSource
    DataSet = qryGrupo
    Left = 592
    Top = 248
  end
end
