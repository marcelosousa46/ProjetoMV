program MV;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {frmPrincipal},
  uCadastroBase in 'Views\uCadastroBase.pas' {frmCadastroBase},
  uDM in 'DM\uDM.pas' {DM: TDataModule},
  uDadosConexaoModel in 'Models\uDadosConexaoModel.pas',
  uDepartamentosModel in 'Models\uDepartamentosModel.pas',
  uDepartamentoView in 'Views\uDepartamentoView.pas' {frmCadastroDepartamento},
  uDepartamentosRepository in 'Repositories\uDepartamentosRepository.pas',
  uDepartamentosController in 'Controllers\uDepartamentosController.pas',
  uEmpregadosModel in 'Models\uEmpregadosModel.pas',
  uEmpregadosRepository in 'Repositories\uEmpregadosRepository.pas',
  uEmpregadoView in 'Views\uEmpregadoView.pas' {frmCadastroEmpregado},
  uEmpregadosController in 'Controllers\uEmpregadosController.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
