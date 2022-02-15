unit uEmpregadosController;

interface

uses
  uEmpregadosRepository, uEmpregadosModel;

type

  TEmpregadoController = class
  private
    FEmpregadoRepository: TEmpregadoRepository;
    FEmpregado: TEmpregadosModel;
  public
    property Empregado: TEmpregadosModel read FEmpregado write FEmpregado;
    procedure InserirEmpregado;
    procedure CarregarDados(aFiltro: string);
    procedure ExcluirEmpregado;
    procedure UpdateEmpregado;

    constructor create; virtual;
    destructor Destroy; override;

  end;

implementation

uses
  uDM;

{ EmpregadoController }

procedure TEmpregadoController.CarregarDados(aFiltro: string);
begin
  FEmpregadoRepository.GetEmpregados(aFiltro);
end;

constructor TEmpregadoController.create;
begin
  FEmpregado := TEmpregadosModel.Create;
  FEmpregadoRepository              := TEmpregadoRepository.create;
  FEmpregadoRepository.Query        := dm.fdEmpregados;
  FEmpregadoRepository.Empregado    := FEmpregado;

end;

destructor TEmpregadoController.Destroy;
begin
  FEmpregado.Free;
  FEmpregadoRepository.Free;
  inherited;
end;

procedure TEmpregadoController.ExcluirEmpregado;
begin
  FEmpregadoRepository.Deletar;
end;

procedure TEmpregadoController.InserirEmpregado;
begin
  FEmpregadoRepository.Inserir;
end;

procedure TEmpregadoController.UpdateEmpregado;
begin
  FEmpregadoRepository.Update;
end;

end.
