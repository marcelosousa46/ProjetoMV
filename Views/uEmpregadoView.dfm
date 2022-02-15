inherited frmCadastroEmpregado: TfrmCadastroEmpregado
  Caption = 'frmCadastroEmpregado'
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnPrincipal: TPanel
    inherited pnTop: TPanel
      inherited lbTitulo: TLabel
        Width = 187
        Caption = 'Cadastro Empregados'
        ExplicitWidth = 187
      end
    end
    inherited pgListagem: TPageControl
      inherited tbListagem: TTabSheet
        inherited pnMenuListagem: TPanel
          inherited pnBotoes: TPanel
            inherited btExcluir: TSpeedButton
              OnClick = btExcluirClick
            end
          end
        end
        inherited pnGrid: TPanel
          inherited dbgDados: TDBGrid
            DataSource = DM.dsEmpregados
            Columns = <
              item
                Expanded = False
                FieldName = 'id_empregado'
                Title.Caption = 'ID'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nm_empregado'
                Title.Caption = 'Nome'
                Width = 312
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nm_funcao'
                Title.Caption = 'Fun'#231#227'o'
                Width = 309
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'data_admissao'
                Title.Caption = 'Admiss'#227'o'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'salario'
                Title.Caption = 'Sal'#225'rio'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nm_departamento'
                Title.Caption = 'Departamento'
                Width = 95
                Visible = True
              end>
          end
        end
      end
      inherited tbCadastro: TTabSheet
        object Label1: TLabel [0]
          Left = 7
          Top = 98
          Width = 39
          Height = 17
          Caption = 'Nome:'
        end
        object Label2: TLabel [1]
          Left = 7
          Top = 66
          Width = 87
          Height = 17
          Caption = 'Departamento:'
        end
        object Label3: TLabel [2]
          Left = 7
          Top = 138
          Width = 44
          Height = 17
          Caption = 'Fun'#231#227'o:'
        end
        object Label4: TLabel [3]
          Left = 7
          Top = 173
          Width = 90
          Height = 17
          Caption = 'Data admiss'#227'o:'
        end
        object Label5: TLabel [4]
          Left = 7
          Top = 210
          Width = 43
          Height = 17
          Caption = 'Sal'#225'rio:'
        end
        object Label6: TLabel [5]
          Left = 7
          Top = 247
          Width = 60
          Height = 17
          Caption = 'Comiss'#227'o:'
        end
        inherited Panel1: TPanel
          TabOrder = 5
        end
        object edNome: TEdit
          Left = 99
          Top = 98
          Width = 531
          Height = 25
          TabOrder = 0
        end
        object dblDepartamento: TDBLookupComboBox
          Left = 99
          Top = 59
          Width = 531
          Height = 25
          DataField = 'id_departamento'
          DataSource = DM.dsEmpregados
          KeyField = 'id_departamento'
          ListField = 'nm_departamento'
          ListSource = DM.dsDepartamentos
          TabOrder = 6
        end
        object edFuncao: TEdit
          Left = 99
          Top = 134
          Width = 531
          Height = 25
          TabOrder = 1
        end
        object dtDataAdimissao: TDateTimePicker
          Left = 99
          Top = 168
          Width = 186
          Height = 25
          Date = 44607.000000000000000000
          Time = 0.386262222222285300
          TabOrder = 2
        end
        object edSalario: TEdit
          Left = 99
          Top = 205
          Width = 186
          Height = 25
          Alignment = taRightJustify
          TabOrder = 3
          Text = '0'
          OnExit = edSalarioExit
        end
        object edComissao: TEdit
          Left = 99
          Top = 242
          Width = 186
          Height = 25
          Alignment = taRightJustify
          TabOrder = 4
          Text = '0'
          OnExit = edComissaoExit
        end
      end
    end
  end
end
