object DataModule1: TDataModule1
  Height = 480
  Width = 640
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=clinica'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 88
    Top = 136
  end
  object tb_paciente: TFDTable
    Active = True
    AfterInsert = tb_pacienteAfterInsert
    IndexFieldNames = 'id'
    Connection = Conexao
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'clinica.paciente'
    Left = 272
    Top = 96
    object tb_pacientecpf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cpf'
      Origin = 'cpf'
      EditMask = '###.###.###-##;0;_'
      Size = 14
    end
    object tb_pacienteid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ReadOnly = True
    end
    object tb_pacientenome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      Size = 80
    end
    object tb_pacientecelular: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'celular'
      Origin = 'celular'
      EditMask = '(##) 9.####-####;1;_'
      Size = 16
    end
    object tb_pacientedata_cadastro: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data_cadastro'
      Origin = 'data_cadastro'
    end
  end
  object tb_agendamento: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = Conexao
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'clinica.agendamento'
    Left = 472
    Top = 96
    object tb_agendamentoid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object tb_agendamentoid_paciente: TIntegerField
      FieldName = 'id_paciente'
      Origin = 'id_paciente'
      Required = True
    end
    object tb_agendamentodata_agendamento: TDateField
      FieldName = 'data_agendamento'
      Origin = 'data_agendamento'
      Required = True
      EditMask = '##/##/####;1;_'
    end
    object tb_agendamentohora_do_agendamento: TStringField
      FieldName = 'hora_do_agendamento'
      Origin = 'hora_do_agendamento'
      Required = True
      EditMask = '##:##;1;_'
      Size = 8
    end
    object tb_agendamentoespecialidade: TStringField
      FieldName = 'especialidade'
      Origin = 'especialidade'
      Required = True
      Size = 30
    end
    object tb_agendamentomedico: TStringField
      FieldName = 'medico'
      Origin = 'medico'
      Required = True
      Size = 50
    end
  end
  object DataSource_paciente: TDataSource
    DataSet = tb_paciente
    Left = 280
    Top = 176
  end
  object DataSource_agendamento: TDataSource
    DataSet = tb_agendamento
    Left = 480
    Top = 192
  end
end
