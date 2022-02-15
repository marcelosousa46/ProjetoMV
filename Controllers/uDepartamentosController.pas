unit uDepartamentosController;

interface

uses
  uDepartamentosModel, uDepartamentosRepository, Vcl.DBGrids, uDM;

type

  TDepartamentoController = class
  private
    FDepartamento: TDepartamentosModel;
    FDepartamentoRepository: TDepartamentoRepository;
  public
    property Departamento: TDepartamentosModel read FDepartamento write FDepartamento;
    procedure InserirDepartamento;
    procedure CarregarDados(aFiltro: string);
    procedure ExcluirDepartamento;
    procedure UpdateDepartamento;

    constructor create; virtual;
    destructor Destroy; override;

  end;

implementation

{ TDepartamentoController }

procedure TDepartamentoController.CarregarDados(aFiltro: string);
begin
  FDepartamentoRepository.GetDepartamentos(aFiltro);
end;

constructor TDepartamentoController.Create;
begin
  FDepartamento := TDepartamentosModel.Create;
  FDepartamentoRepository              := TDepartamentoRepository.create;
  FDepartamentoRepository.Query        := dm.fdDepartamentos;
  FDepartamentoRepository.Departamento := FDepartamento;
  FDepartamentoRepository.Departamento := FDepartamento;
end;

destructor TDepartamentoController.Destroy;
begin
  FDepartamento.Free;
  FDepartamentoRepository.Free;
  inherited;
end;

procedure TDepartamentoController.UpdateDepartamento;
begin
  FDepartamentoRepository.Update;
end;

procedure TDepartamentoController.ExcluirDepartamento;
begin
  FDepartamentoRepository.Deletar;
end;

procedure TDepartamentoController.InserirDepartamento;
begin
  FDepartamentoRepository.Inserir;
end;

end.
