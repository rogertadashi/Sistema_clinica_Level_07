program Clinica;

uses
  Vcl.Forms,
  UnitPrincipal in 'UnitPrincipal.pas' {FormPrincipal},
  UnitCadastroPaciente in 'UnitCadastroPaciente.pas' {FormCadastroPaciente},
  UnitCadastroAgendamentos in 'UnitCadastroAgendamentos.pas' {FormCadastroAgendamentos},
  UnitDataModule in 'UnitDataModule.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TFormCadastroPaciente, FormCadastroPaciente);
  Application.CreateForm(TFormCadastroAgendamentos, FormCadastroAgendamentos);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
