object FormCadastroAgendamentos: TFormCadastroAgendamentos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Agendamentos'
  ClientHeight = 616
  ClientWidth = 946
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object Label2: TLabel
    Left = 72
    Top = 134
    Width = 13
    Height = 20
    Caption = 'Id'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 248
    Top = 134
    Width = 111
    Height = 20
    Caption = 'Nome Completo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 72
    Top = 214
    Width = 32
    Height = 20
    Caption = 'Data'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 248
    Top = 214
    Width = 33
    Height = 20
    Caption = 'Hora'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 72
    Top = 286
    Width = 92
    Height = 20
    Caption = 'Especialidade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 72
    Top = 366
    Width = 50
    Height = 20
    Caption = 'M'#233'dico'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 946
    Height = 113
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 918
    object Label1: TLabel
      Left = 72
      Top = 37
      Width = 149
      Height = 30
      Caption = 'Agendamentos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBNavigator1: TDBNavigator
      Left = 434
      Top = 31
      Width = 480
      Height = 52
      DataSource = DataModule1.DataSource_agendamento
      TabOrder = 0
      TabStop = True
    end
  end
  object txtID: TDBEdit
    Left = 72
    Top = 160
    Width = 153
    Height = 23
    DataField = 'id'
    DataSource = DataModule1.DataSource_agendamento
    TabOrder = 1
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 248
    Top = 160
    Width = 233
    Height = 23
    DataField = 'id_paciente'
    DataSource = DataModule1.DataSource_agendamento
    KeyField = 'id'
    ListField = 'nome'
    ListSource = DataModule1.DataSource_paciente
    TabOrder = 2
  end
  object DBEdit1: TDBEdit
    Left = 72
    Top = 240
    Width = 149
    Height = 23
    DataField = 'data_agendamento'
    DataSource = DataModule1.DataSource_agendamento
    MaxLength = 10
    TabOrder = 3
  end
  object DBEdit2: TDBEdit
    Left = 248
    Top = 240
    Width = 153
    Height = 23
    DataField = 'hora_do_agendamento'
    DataSource = DataModule1.DataSource_agendamento
    MaxLength = 5
    TabOrder = 4
  end
  object DBComboBox1: TDBComboBox
    Left = 72
    Top = 320
    Width = 329
    Height = 23
    DataField = 'especialidade'
    DataSource = DataModule1.DataSource_agendamento
    Items.Strings = (
      'Cardiologista'
      'Nutricionista'
      'Ortopedista')
    TabOrder = 5
  end
  object DBEdit3: TDBEdit
    Left = 72
    Top = 392
    Width = 329
    Height = 23
    DataField = 'medico'
    DataSource = DataModule1.DataSource_agendamento
    TabOrder = 6
  end
  object DBGrid1: TDBGrid
    Left = 520
    Top = 240
    Width = 361
    Height = 273
    DataSource = DataModule1.DataSource_agendamento
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'data_agendamento'
        Title.Caption = 'Data'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'hora_do_agendamento'
        Title.Caption = 'Hora'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'especialidade'
        Title.Caption = 'Especialidade'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = []
        Visible = True
      end>
  end
end
