unit UnitDataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDataModule1 = class(TDataModule)
    Conexao: TFDConnection;
    tb_paciente: TFDTable;
    tb_agendamento: TFDTable;
    DataSource_paciente: TDataSource;
    DataSource_agendamento: TDataSource;
    tb_pacientecpf: TStringField;
    tb_pacienteid: TFDAutoIncField;
    tb_pacientenome: TStringField;
    tb_pacientecelular: TStringField;
    tb_pacientedata_cadastro: TDateField;
    tb_agendamentoid: TFDAutoIncField;
    tb_agendamentoid_paciente: TIntegerField;
    tb_agendamentodata_agendamento: TDateField;
    tb_agendamentohora_do_agendamento: TStringField;
    tb_agendamentoespecialidade: TStringField;
    tb_agendamentomedico: TStringField;
    procedure tb_pacienteAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDataModule1.tb_pacienteAfterInsert(DataSet: TDataSet);
begin
  tb_pacientedata_cadastro.Value := Date();
end;

end.
