unit UnitCadastroPaciente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TFormCadastroPaciente = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    txtID: TDBEdit;
    txtNome: TDBEdit;
    txtCell: TDBEdit;
    txtDate: TDBEdit;
    txtCPF: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    gridPacientes: TDBGrid;
    DBNavigator1: TDBNavigator;
    Label7: TLabel;
    Buscador: TEdit;
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroPaciente: TFormCadastroPaciente;

implementation

{$R *.dfm}

uses UnitDataModule;

procedure TFormCadastroPaciente.Edit1Change(Sender: TObject);
begin
  DataModule1.tb_paciente.Locate('nome',Buscador.Text,[loPartialKey]);
end;

end.
