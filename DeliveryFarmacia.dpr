program DeliveryFarmacia;

uses
  Vcl.Forms,
  UnFormPrincipal in 'Formularios\UnFormPrincipal.pas' {UnFormPrincipal},
  UnFormProdutos in 'Formularios\UnFormProdutos.pas' {UnFormProdutos},
  DM_Dados.Firebird in 'Dados\Firebird\DM_Dados.Firebird.pas' {DM_DadosFB: TDataModule},
  UnFormClientes in 'Formularios\UnFormClientes.pas' {FormClientes},
  UnFormEntregadores in 'Formularios\UnFormEntregadores.pas' {FormEntregadores},
  UnFormEntregas in 'Formularios\UnFormEntregas.pas' {FormEntregas},
  UnFormPedidos in 'Formularios\UnFormPedidos.pas' {FormPedidos},
  UnFormEntregasAcompanhamento in 'Formularios\UnFormEntregasAcompanhamento.pas' {FormEntregasAcompanhamento};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.Run;
end.