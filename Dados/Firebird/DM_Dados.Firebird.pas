unit DM_Dados.Firebird;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, Datasnap.DBClient, Datasnap.Provider, Vcl.Dialogs;

type
  TDM_DadosFB = class(TDataModule)
    FDConexao: TFDConnection;
    DSProdutos: TDataSource;
    FDQProdutos: TFDQuery;
    FDQProdutosID: TIntegerField;
    FDQProdutosNOME: TStringField;
    FDQProdutosCODIGO: TStringField;
    FDQProdutosQUANTIDADE: TIntegerField;
    FDQProdutosDATAVALIDADE: TDateField;
    FDQProdutosCONDICOESARMAZENAMENTO: TStringField;
    DSpProdutos: TDataSetProvider;
    CDsProdutos: TClientDataSet;
    DSClientes: TDataSource;
    FDQClientes: TFDQuery;
    DSpClientes: TDataSetProvider;
    CDsClientes: TClientDataSet;
    DSEntregas: TDataSource;
    FDQEntregas: TFDQuery;
    DSpEntregas: TDataSetProvider;
    CDsEntregas: TClientDataSet;
    DSEntregadores: TDataSource;
    FDQEntregadores: TFDQuery;
    DSpEntregadores: TDataSetProvider;
    CDsEntregadores: TClientDataSet;
    DSPedidos: TDataSource;
    FDQPedidos: TFDQuery;
    DSpPedidos: TDataSetProvider;
    CDsPedidos: TClientDataSet;
    FDQClientesID: TIntegerField;
    FDQClientesNOME: TStringField;
    FDQClientesENDERECO: TStringField;
    FDQClientesTELEFONE: TStringField;
    FDQEntregasID: TIntegerField;
    FDQEntregasENTREGADOR_ID: TIntegerField;
    FDQEntregasDATAENTREGA: TSQLTimeStampField;
    FDQEntregasCOMENTARIOS: TStringField;
    FDQEntregadoresID: TIntegerField;
    FDQEntregadoresNOME: TStringField;
    FDQEntregadoresVEICULO: TStringField;
    FDQEntregadoresCAPACIDADEMAXIMA: TIntegerField;
    FDQPedidosID: TIntegerField;
    FDQPedidosCLIENTE_ID: TIntegerField;
    FDQPedidosDATAPEDIDO: TSQLTimeStampField;
    CDsProdutosID: TIntegerField;
    CDsProdutosNOME: TStringField;
    CDsProdutosCODIGO: TStringField;
    CDsProdutosQUANTIDADE: TIntegerField;
    CDsProdutosDATAVALIDADE: TDateField;
    CDsProdutosCONDICOESARMAZENAMENTO: TStringField;
    CDsClientesID: TIntegerField;
    CDsClientesNOME: TStringField;
    CDsClientesENDERECO: TStringField;
    CDsClientesTELEFONE: TStringField;
    CDsEntregasID: TIntegerField;
    CDsEntregasENTREGADOR_ID: TIntegerField;
    CDsEntregasDATAENTREGA: TSQLTimeStampField;
    CDsEntregasCOMENTARIOS: TStringField;
    CDsEntregadoresID: TIntegerField;
    CDsEntregadoresNOME: TStringField;
    CDsEntregadoresVEICULO: TStringField;
    CDsEntregadoresCAPACIDADEMAXIMA: TIntegerField;
    CDsPedidosID: TIntegerField;
    CDsPedidosCLIENTE_ID: TIntegerField;
    CDsPedidosDATAPEDIDO: TSQLTimeStampField;
    DSItensPedidos: TDataSource;
    FDQItensPedidos: TFDQuery;
    DSpItensPedidos: TDataSetProvider;
    CDsItensPedidos: TClientDataSet;
    FDQItensPedidosID: TIntegerField;
    FDQItensPedidosPEDIDO_ID: TIntegerField;
    FDQItensPedidosPRODUTO_ID: TIntegerField;
    FDQItensPedidosQUANTIDADE: TIntegerField;
    FDQItensPedidosOBSERVACOES: TStringField;
    CDsItensPedidosID: TIntegerField;
    CDsItensPedidosPEDIDO_ID: TIntegerField;
    CDsItensPedidosPRODUTO_ID: TIntegerField;
    CDsItensPedidosQUANTIDADE: TIntegerField;
    CDsItensPedidosOBSERVACOES: TStringField;
    FDQItensPedidosPRODUTO: TStringField;
    CDsItensPedidosPRODUTO: TStringField;
    DSTipoProd: TDataSource;
    FDQTipoProd: TFDQuery;
    DSpTipoProd: TDataSetProvider;
    CDsTipoProd: TClientDataSet;
    FDQTipoProdID: TIntegerField;
    FDQTipoProdNOME: TStringField;
    CDsTipoProdID: TIntegerField;
    CDsTipoProdNOME: TStringField;
    FDQProdutosTIPO: TIntegerField;
    CDsProdutosTIPO: TIntegerField;
    DSstatus: TDataSource;
    FDQStatus: TFDQuery;
    DSpStatus: TDataSetProvider;
    CDsStatus: TClientDataSet;
    FDQStatusID: TIntegerField;
    FDQStatusTIPO: TSmallintField;
    FDQStatusNOME: TStringField;
    CDsStatusID: TIntegerField;
    CDsStatusTIPO: TSmallintField;
    CDsStatusNOME: TStringField;
    FDQEntregasSTATUS_ID: TIntegerField;
    CDsEntregasSTATUS_ID: TIntegerField;
    FDQPedidosSTATUS_ID: TIntegerField;
    CDsPedidosSTATUS_ID: TIntegerField;
    DSItensValorTotal: TDataSource;
    CDsItensValorTotal: TClientDataSet;
    FDQItensValorTotal: TFDQuery;
    DSpItensValorTotal: TDataSetProvider;
    FDQItensValorTotalPEDIDO_ID: TIntegerField;
    FDQItensValorTotalVALORTOTAL: TFMTBCDField;
    CDsItensValorTotalPEDIDO_ID: TIntegerField;
    CDsItensValorTotalVALORTOTAL: TFMTBCDField;
    FDQProdutosVALOR: TFMTBCDField;
    CDsProdutosVALOR: TFMTBCDField;
    DSPedidosEntregas: TDataSource;
    FDQPedidosEntregas: TFDQuery;
    DSpPedidosEntregas: TDataSetProvider;
    CDsPedidosEntregas: TClientDataSet;
    DSPedSemEnt: TDataSource;
    FQDPedSemEnt: TFDQuery;
    DSpPedSemEnt: TDataSetProvider;
    CDsPedSemEnt: TClientDataSet;
    FQDPedSemEntPEDIDO_ID: TIntegerField;
    FQDPedSemEntDATAPEDIDO: TSQLTimeStampField;
    FQDPedSemEntSTATUS: TStringField;
    FQDPedSemEntPRIORIDADE: TIntegerField;
    CDsPedSemEntPEDIDO_ID: TIntegerField;
    CDsPedSemEntDATAPEDIDO: TSQLTimeStampField;
    CDsPedSemEntSTATUS: TStringField;
    CDsPedSemEntPRIORIDADE: TIntegerField;
    FQDPedSemEntCLIENTEID: TIntegerField;
    FQDPedSemEntCLIENTENOME: TStringField;
    FQDPedSemEntCLIENTEEND: TStringField;
    CDsPedSemEntCLIENTEID: TIntegerField;
    CDsPedSemEntCLIENTENOME: TStringField;
    CDsPedSemEntCLIENTEEND: TStringField;
    FDQPedidosEntregasID: TIntegerField;
    FDQPedidosEntregasPEDIDO_ID: TIntegerField;
    FDQPedidosEntregasENTREGA_ID: TIntegerField;
    FDQPedidosEntregasDATAPEDIDO: TSQLTimeStampField;
    FDQPedidosEntregasSTATUS: TStringField;
    FDQPedidosEntregasCLIENTEID: TIntegerField;
    FDQPedidosEntregasCLIENTENOME: TStringField;
    FDQPedidosEntregasCLIENTEEND: TStringField;
    FDQPedidosEntregasPRIORIDADE: TIntegerField;
    CDsPedidosEntregasID: TIntegerField;
    CDsPedidosEntregasPEDIDO_ID: TIntegerField;
    CDsPedidosEntregasENTREGA_ID: TIntegerField;
    CDsPedidosEntregasDATAPEDIDO: TSQLTimeStampField;
    CDsPedidosEntregasSTATUS: TStringField;
    CDsPedidosEntregasCLIENTEID: TIntegerField;
    CDsPedidosEntregasCLIENTENOME: TStringField;
    CDsPedidosEntregasCLIENTEEND: TStringField;
    CDsPedidosEntregasPRIORIDADE: TIntegerField;
    DSProdPedEnt: TDataSource;
    FDQProdPedEnt: TFDQuery;
    DSpProdPedEnt: TDataSetProvider;
    CDsProdPedEnt: TClientDataSet;
    FDQProdPedEntPRODUTO: TStringField;
    FDQProdPedEntQUANTIDADE: TIntegerField;
    FDQProdPedEntVALORUNITARIO: TFMTBCDField;
    FDQProdPedEntVALORTOTAL: TFMTBCDField;
    CDsProdPedEntPRODUTO: TStringField;
    CDsProdPedEntQUANTIDADE: TIntegerField;
    CDsProdPedEntVALORUNITARIO: TFMTBCDField;
    CDsProdPedEntVALORTOTAL: TFMTBCDField;
    DSAcompEntrega: TDataSource;
    FDQAcompEntrega: TFDQuery;
    DSpAcompEntrega: TDataSetProvider;
    CDsAcompEntrega: TClientDataSet;
    FDQAcompEntregaID: TIntegerField;
    FDQAcompEntregaPEDIDO_ID: TIntegerField;
    FDQAcompEntregaENTREGA_ID: TIntegerField;
    FDQAcompEntregaDATAENTREGA: TSQLTimeStampField;
    FDQAcompEntregaDATAPEDIDO: TSQLTimeStampField;
    FDQAcompEntregaSTATUS: TStringField;
    FDQAcompEntregaCLIENTEID: TIntegerField;
    FDQAcompEntregaCLIENTENOME: TStringField;
    FDQAcompEntregaCLIENTEEND: TStringField;
    FDQAcompEntregaPRIORIDADE: TIntegerField;
    CDsAcompEntregaID: TIntegerField;
    CDsAcompEntregaPEDIDO_ID: TIntegerField;
    CDsAcompEntregaENTREGA_ID: TIntegerField;
    CDsAcompEntregaDATAENTREGA: TSQLTimeStampField;
    CDsAcompEntregaDATAPEDIDO: TSQLTimeStampField;
    CDsAcompEntregaSTATUS: TStringField;
    CDsAcompEntregaCLIENTEID: TIntegerField;
    CDsAcompEntregaCLIENTENOME: TStringField;
    CDsAcompEntregaCLIENTEEND: TStringField;
    CDsAcompEntregaPRIORIDADE: TIntegerField;
    FDQAcompEntregaCOMENTARIOS: TStringField;
    CDsAcompEntregaCOMENTARIOS: TStringField;
    procedure CDsItensPedidosBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure InserirPedidoEntrega(PedidoID, EntregaID: Integer);
    procedure RemoverPedidoEntrega(PedidoEntregaID: Integer);
    procedure AtualizarStatusEntrega(EntregaID,StatusID: Integer);
    procedure AtualizarStatusPE(peID,StatusID: Integer);
    procedure AtualizarComentariosEntrega(peID: Integer; NovoComentario: string);
  end;

var
  DM_DadosFB: TDM_DadosFB;

Const
  MsgRegEntrBloq     = 'O pedido e/ou entrega não pode ser mais alterado devido a mesma está em andamento.';
  SelectStatusP      = 'SELECT * FROM STATUS WHERE TIPO = 0'; //Tipo=0 para status relacionados aos Pedidos;
  SelectStatusE      = 'SELECT * FROM STATUS WHERE TIPO = 1'; //Tipo=1 para status relacionados aos Entregas;
  SelectPedidos      = 'SELECT * FROM PEDIDOS';
  SelectClientes     = 'SELECT * FROM CLIENTES';
  SelectItensPedidos = 'SELECT I.*, P.NOME AS PRODUTO FROM ITENSPEDIDO I INNER JOIN PRODUTOS P ON P.ID = I.PRODUTO_ID WHERE I.PEDIDO_ID = :ID_PEDIDO';
  SelectItensPedVT   = 'SELECT ip.Pedido_ID, SUM(pr.Valor * ip.Quantidade) AS ValorTotal FROM ItensPedido ip JOIN Produtos pr ON ip.Produto_ID = pr.ID WHERE ip.Pedido_ID = :PedidoID GROUP BY ip.Pedido_ID';

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDM_DadosFB.AtualizarComentariosEntrega(peID: Integer; NovoComentario: string);
var
  qryEntregas: TFDQuery;
begin
  // Cria a query (se não estiver usando um componente visual)
  qryEntregas := TFDQuery.Create(nil);
  try
    // Associa a query à conexão
    qryEntregas.Connection := FDConexao;

    // Define o SQL para atualizar o campo Comentarios
    qryEntregas.SQL.Text :=
      'UPDATE PedidosEntregas ' +
      'SET Comentarios = :Comentarios '+
      'WHERE ID = :ID';

    // Passa os parâmetros
    qryEntregas.ParamByName('Comentarios').AsString := NovoComentario;
    qryEntregas.ParamByName('ID').AsInteger := peID;

    // Executa o UPDATE
    qryEntregas.ExecSQL;

    // Exibe uma mensagem de sucesso
    ShowMessage('Comentários da entrega atualizados com sucesso!');
  finally
    // Libera a query da memória
    qryEntregas.Free;
  end;
end;

procedure TDM_DadosFB.AtualizarStatusPE(peID,StatusID: Integer);
var
  qryEntregas: TFDQuery;
begin
  // Cria a query (se não estiver usando um componente visual)
  qryEntregas := TFDQuery.Create(nil);
  try
    // Associa a query à conexão
    qryEntregas.Connection := FDConexao;

    // Define o SQL para atualizar o Status_ID
    qryEntregas.SQL.Text :=
      'UPDATE PedidosEntregas ' +
      'SET Status_ID = :IDS '+
      'WHERE ID = :ID';

    // Passa o parâmetro
    qryEntregas.ParamByName('ID').AsInteger := peID;
    qryEntregas.ParamByName('IDS').AsInteger := StatusID;

    // Executa o UPDATE
    qryEntregas.ExecSQL;
    // Exibe uma mensagem de sucesso
    ShowMessage('Status da entrega atualizado com sucesso!');
  finally
    // Libera a query da memória
    qryEntregas.Free;
  end;
end;

procedure TDM_DadosFB.AtualizarStatusEntrega(EntregaID,StatusID: Integer);
var
  qryEntregas: TFDQuery;
begin
  // Cria a query (se não estiver usando um componente visual)
  qryEntregas := TFDQuery.Create(nil);
  try
    // Associa a query à conexão
    qryEntregas.Connection := FDConexao;

    // Define o SQL para atualizar o Status_ID
    qryEntregas.SQL.Text :=
      'UPDATE Entregas ' +
      'SET Status_ID = :IDS '+
      'WHERE ID = :ID';

    // Passa o parâmetro
    qryEntregas.ParamByName('ID').AsInteger := EntregaID;
    qryEntregas.ParamByName('IDS').AsInteger := StatusID;

    // Executa o UPDATE
    qryEntregas.ExecSQL;

    qryEntregas.SQL.Clear;

    qryEntregas.SQL.Text :=
      'UPDATE PedidosEntregas ' +
      'SET Status_ID = :IDS '+
      'WHERE ENTREGA_ID = :ID';

    // Passa o parâmetro
    qryEntregas.ParamByName('ID').AsInteger := EntregaID;
    qryEntregas.ParamByName('IDS').AsInteger := StatusID;
    // Executa o UPDATE
    qryEntregas.ExecSQL;

    // Exibe uma mensagem de sucesso
    ShowMessage('Status da entrega atualizado com sucesso!');
  finally
    // Libera a query da memória
    qryEntregas.Free;
    CDsPedSemEnt.Refresh;
    CDsPedidosEntregas.Refresh;
    CDsEntregas.Refresh;
    CDsEntregas.ReadOnly:=True;
  end;
end;

procedure TDM_DadosFB.InserirPedidoEntrega(PedidoID, EntregaID: Integer);
var
  qryPedidosEntregas: TFDQuery;
begin
  // Cria a query (se não estiver usando um componente visual)
  qryPedidosEntregas := TFDQuery.Create(nil);
  try
    // Associa a query à conexão
    qryPedidosEntregas.Connection := FDConexao;

    // Define o SQL para inserir um registro
    qryPedidosEntregas.SQL.Text :=
      'INSERT INTO PedidosEntregas (Pedido_ID, Entrega_ID) ' +
      'VALUES (:Pedido_ID, :Entrega_ID)';

    // Passa os parâmetros
    qryPedidosEntregas.ParamByName('Pedido_ID').AsInteger := PedidoID;
    qryPedidosEntregas.ParamByName('Entrega_ID').AsInteger := EntregaID;

    // Executa o INSERT
    qryPedidosEntregas.ExecSQL;

    // Exibe uma mensagem de sucesso
    ShowMessage('Registro inserido com sucesso!');
  finally
    // Libera a query da memória
    qryPedidosEntregas.Free;
    CDsPedSemEnt.Refresh;
    CDsPedidosEntregas.Refresh;
  end;
end;

procedure TDM_DadosFB.RemoverPedidoEntrega(PedidoEntregaID: Integer);
var
  qryPedidosEntregas : TFDQuery;
begin
  // Cria a query (se não estiver usando um componente visual)
  qryPedidosEntregas := TFDQuery.Create(nil);
  try
    // Associa a query à conexão
    qryPedidosEntregas.Connection := FDConexao;

    // Define o SQL para remover um registro
    qryPedidosEntregas.SQL.Text :=
      'DELETE FROM PedidosEntregas ' +
      'WHERE ID = :ID';

    // Passa o parâmetro
    qryPedidosEntregas.ParamByName('ID').AsInteger := PedidoEntregaID;

    // Executa o DELETE
    qryPedidosEntregas.ExecSQL;

    // Exibe uma mensagem de sucesso
    ShowMessage('Registro removido com sucesso!');
  finally
    // Libera a query da memória
    qryPedidosEntregas.Free;
    CDsPedSemEnt.Refresh;
    CDsPedidosEntregas.Refresh;
  end;
end;

procedure TDM_DadosFB.CDsItensPedidosBeforePost(DataSet: TDataSet);
begin
  //Pegar o id do pedido para incluir no item que será gravado no UnFormPedidos.
  DataSet.FieldByName('PEDIDO_ID').AsInteger := CDsItensPedidos.ParamByName('ID_PEDIDO').AsInteger;
end;

end.
