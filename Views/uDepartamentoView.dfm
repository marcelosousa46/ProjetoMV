inherited frmCadastroDepartamento: TfrmCadastroDepartamento
  Caption = 'frmCadastroDepartamento'
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnPrincipal: TPanel
    inherited pnTop: TPanel
      inherited lbTitulo: TLabel
        Width = 215
        Height = 57
        Caption = 'Cadastro Departamentos'
        ExplicitWidth = 215
      end
    end
    inherited pgListagem: TPageControl
      ActivePage = tbCadastro
      inherited tbListagem: TTabSheet
        inherited pnMenuListagem: TPanel
          inherited btnPesquisar: TSpeedButton
            OnClick = btnPesquisarClick
          end
          inherited pnBotoes: TPanel
            inherited btExcluir: TSpeedButton
              OnClick = btExcluirClick
            end
          end
        end
        inherited pnGrid: TPanel
          inherited dbgDados: TDBGrid
            DataSource = DM.dsDepartamentos
            Columns = <
              item
                Expanded = False
                FieldName = 'id_departamento'
                Title.Caption = 'ID'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nm_departamento'
                Title.Caption = 'Nome'
                Width = 531
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'local'
                Title.Caption = 'Local'
                Width = 100
                Visible = True
              end>
          end
        end
      end
      inherited tbCadastro: TTabSheet
        object Label1: TLabel [0]
          Left = 15
          Top = 72
          Width = 123
          Height = 17
          Caption = 'Nome departamento'
        end
        object Label2: TLabel [1]
          Left = 15
          Top = 110
          Width = 30
          Height = 17
          Caption = 'Local'
        end
        object edNome: TEdit
          Left = 144
          Top = 69
          Width = 578
          Height = 25
          TabOrder = 1
        end
        object edLocal: TEdit
          Left = 144
          Top = 107
          Width = 578
          Height = 25
          TabOrder = 2
        end
      end
    end
  end
end
