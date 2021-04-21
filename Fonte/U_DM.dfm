object DM: TDM
  OldCreateOrder = False
  Height = 388
  Width = 414
  object con_admin: TFDConnection
    Params.Strings = (
      'Database=C:\Projetos\sys_config\Banco\Dados\CONFIG.FB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=localhost'
      'CharacterSet=WIN1252'
      'DriverID=FB')
    Left = 56
    Top = 56
  end
  object transacao_con_admin: TFDTransaction
    Connection = con_admin
    Left = 160
    Top = 56
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 96
    Top = 152
  end
end
