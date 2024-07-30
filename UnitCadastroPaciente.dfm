object FormCadastroPaciente: TFormCadastroPaciente
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Pacientes'
  ClientHeight = 573
  ClientWidth = 922
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
    Width = 10
    Height = 20
    Caption = 'Id'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 248
    Top = 134
    Width = 24
    Height = 20
    Caption = 'CPF'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 72
    Top = 214
    Width = 108
    Height = 20
    Caption = 'Nome Completo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 72
    Top = 302
    Width = 46
    Height = 20
    Caption = 'Celular'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 248
    Top = 302
    Width = 116
    Height = 20
    Caption = 'Data de Cadastro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 512
    Top = 134
    Width = 102
    Height = 20
    Caption = 'Buscar Paciente'
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
    Width = 922
    Height = 113
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 918
    object Label1: TLabel
      Left = 72
      Top = 37
      Width = 213
      Height = 30
      Caption = 'Cadastro de Pacientes'
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
      DataSource = DataModule1.DataSource_paciente
      TabOrder = 0
      TabStop = True
    end
  end
  object txtID: TDBEdit
    Left = 72
    Top = 160
    Width = 150
    Height = 23
    DataField = 'id'
    DataSource = DataModule1.DataSource_paciente
    TabOrder = 1
  end
  object txtNome: TDBEdit
    Left = 72
    Top = 240
    Width = 374
    Height = 23
    DataField = 'nome'
    DataSource = DataModule1.DataSource_paciente
    TabOrder = 3
  end
  object txtCell: TDBEdit
    Left = 72
    Top = 328
    Width = 153
    Height = 23
    DataField = 'celular'
    DataSource = DataModule1.DataSource_paciente
    MaxLength = 16
    TabOrder = 4
  end
  object txtDate: TDBEdit
    Left = 248
    Top = 328
    Width = 201
    Height = 23
    DataField = 'data_cadastro'
    DataSource = DataModule1.DataSource_paciente
    ReadOnly = True
    TabOrder = 5
  end
  object txtCPF: TDBEdit
    Left = 248
    Top = 160
    Width = 201
    Height = 23
    DataField = 'cpf'
    DataSource = DataModule1.DataSource_paciente
    MaxLength = 14
    TabOrder = 2
  end
  object gridPacientes: TDBGrid
    Left = 512
    Top = 189
    Width = 361
    Height = 297
    TabStop = False
    DataSource = DataModule1.DataSource_paciente
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'PACIENTES CADASTRADOS'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object Buscador: TEdit
    Left = 512
    Top = 160
    Width = 361
    Height = 23
    TabOrder = 6
    OnChange = Edit1Change
  end
end
