object DM_DadosFB: TDM_DadosFB
  Height = 823
  Width = 858
  PixelsPerInch = 120
  object FDConexao: TFDConnection
    Params.Strings = (
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    LoginPrompt = False
    Left = 64
    Top = 17
  end
  object DSProdutos: TDataSource
    DataSet = CDsProdutos
    Left = 496
    Top = 16
  end
  object FDQProdutos: TFDQuery
    Connection = FDConexao
    SQL.Strings = (
      'SELECT * FROM PRODUTOS')
    Left = 200
    Top = 16
    object FDQProdutosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQProdutosNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object FDQProdutosCODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
    end
    object FDQProdutosTIPO: TIntegerField
      FieldName = 'TIPO'
      Origin = 'TIPO'
    end
    object FDQProdutosQUANTIDADE: TIntegerField
      DisplayLabel = 'Quantidade'
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Required = True
    end
    object FDQProdutosDATAVALIDADE: TDateField
      DisplayLabel = 'Data Validade'
      FieldName = 'DATAVALIDADE'
      Origin = 'DATAVALIDADE'
    end
    object FDQProdutosCONDICOESARMAZENAMENTO: TStringField
      DisplayLabel = 'Condi'#231#245'es de Armazenamento'
      FieldName = 'CONDICOESARMAZENAMENTO'
      Origin = 'CONDICOESARMAZENAMENTO'
      Size = 255
    end
    object FDQProdutosVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Precision = 18
      Size = 2
    end
  end
  object DSpProdutos: TDataSetProvider
    DataSet = FDQProdutos
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 301
    Top = 16
  end
  object CDsProdutos: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM PRODUTOS'
    Params = <>
    ProviderName = 'DSpProdutos'
    Left = 400
    Top = 16
    object CDsProdutosID: TIntegerField
      FieldName = 'ID'
    end
    object CDsProdutosNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
    object CDsProdutosCODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Required = True
    end
    object CDsProdutosTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object CDsProdutosQUANTIDADE: TIntegerField
      DisplayLabel = 'Quantidade'
      FieldName = 'QUANTIDADE'
      Required = True
    end
    object CDsProdutosDATAVALIDADE: TDateField
      DisplayLabel = 'Data Validade'
      FieldName = 'DATAVALIDADE'
    end
    object CDsProdutosCONDICOESARMAZENAMENTO: TStringField
      DisplayLabel = 'Condi'#231#245'es de Armazenamento'
      FieldName = 'CONDICOESARMAZENAMENTO'
      Size = 255
    end
    object CDsProdutosVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
  end
  object DSClientes: TDataSource
    DataSet = CDsClientes
    Left = 496
    Top = 152
  end
  object FDQClientes: TFDQuery
    ObjectView = False
    Connection = FDConexao
    SQL.Strings = (
      'SELECT * FROM CLIENTES')
    Left = 201
    Top = 152
    object FDQClientesID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQClientesNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object FDQClientesENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 255
    end
    object FDQClientesTELEFONE: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Required = True
    end
  end
  object DSpClientes: TDataSetProvider
    DataSet = FDQClientes
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 304
    Top = 152
  end
  object CDsClientes: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM CLIENTES'
    Params = <>
    ProviderName = 'DSpClientes'
    Left = 408
    Top = 152
    object CDsClientesID: TIntegerField
      FieldName = 'ID'
    end
    object CDsClientesNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
    object CDsClientesENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Required = True
      Size = 255
    end
    object CDsClientesTELEFONE: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'TELEFONE'
      Required = True
    end
  end
  object DSEntregas: TDataSource
    DataSet = CDsEntregas
    Left = 504
    Top = 472
  end
  object FDQEntregas: TFDQuery
    Connection = FDConexao
    SQL.Strings = (
      'SELECT * FROM ENTREGAS')
    Left = 192
    Top = 472
    object FDQEntregasID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQEntregasENTREGADOR_ID: TIntegerField
      FieldName = 'ENTREGADOR_ID'
      Origin = 'ENTREGADOR_ID'
      Required = True
    end
    object FDQEntregasDATAENTREGA: TSQLTimeStampField
      DisplayLabel = 'Data Entrega'
      FieldName = 'DATAENTREGA'
      Origin = 'DATAENTREGA'
    end
    object FDQEntregasCOMENTARIOS: TStringField
      DisplayLabel = 'Comentarios'
      FieldName = 'COMENTARIOS'
      Origin = 'COMENTARIOS'
      Size = 255
    end
    object FDQEntregasSTATUS_ID: TIntegerField
      FieldName = 'STATUS_ID'
      Origin = 'STATUS_ID'
    end
  end
  object DSpEntregas: TDataSetProvider
    DataSet = FDQEntregas
    Left = 304
    Top = 472
  end
  object CDsEntregas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSpEntregas'
    Left = 408
    Top = 472
    object CDsEntregasID: TIntegerField
      FieldName = 'ID'
    end
    object CDsEntregasENTREGADOR_ID: TIntegerField
      FieldName = 'ENTREGADOR_ID'
      Required = True
    end
    object CDsEntregasDATAENTREGA: TSQLTimeStampField
      DisplayLabel = 'Data Entrega'
      FieldName = 'DATAENTREGA'
    end
    object CDsEntregasCOMENTARIOS: TStringField
      DisplayLabel = 'Comentarios'
      FieldName = 'COMENTARIOS'
      Size = 255
    end
    object CDsEntregasSTATUS_ID: TIntegerField
      FieldName = 'STATUS_ID'
    end
  end
  object DSEntregadores: TDataSource
    DataSet = CDsEntregadores
    Left = 496
    Top = 216
  end
  object FDQEntregadores: TFDQuery
    Connection = FDConexao
    SQL.Strings = (
      'SELECT * FROM ENTREGADORES')
    Left = 200
    Top = 216
    object FDQEntregadoresID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQEntregadoresNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object FDQEntregadoresVEICULO: TStringField
      DisplayLabel = 'Veiculo'
      FieldName = 'VEICULO'
      Origin = 'VEICULO'
      Required = True
      Size = 50
    end
    object FDQEntregadoresCAPACIDADEMAXIMA: TIntegerField
      DisplayLabel = 'Capacidade M'#225'xima'
      FieldName = 'CAPACIDADEMAXIMA'
      Origin = 'CAPACIDADEMAXIMA'
      Required = True
    end
  end
  object DSpEntregadores: TDataSetProvider
    DataSet = FDQEntregadores
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 304
    Top = 216
  end
  object CDsEntregadores: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM ENTREGADORES'
    Params = <>
    ProviderName = 'DSpEntregadores'
    Left = 408
    Top = 216
    object CDsEntregadoresID: TIntegerField
      FieldName = 'ID'
    end
    object CDsEntregadoresNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
    object CDsEntregadoresVEICULO: TStringField
      DisplayLabel = 'Veiculo'
      FieldName = 'VEICULO'
      Required = True
      Size = 50
    end
    object CDsEntregadoresCAPACIDADEMAXIMA: TIntegerField
      DisplayLabel = 'Capacidade Maxima'
      FieldName = 'CAPACIDADEMAXIMA'
      Required = True
    end
  end
  object DSPedidos: TDataSource
    DataSet = CDsPedidos
    Left = 496
    Top = 280
  end
  object FDQPedidos: TFDQuery
    Connection = FDConexao
    SQL.Strings = (
      'SELECT * FROM PEDIDOS')
    Left = 200
    Top = 280
    object FDQPedidosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQPedidosCLIENTE_ID: TIntegerField
      FieldName = 'CLIENTE_ID'
      Origin = 'CLIENTE_ID'
      Required = True
    end
    object FDQPedidosDATAPEDIDO: TSQLTimeStampField
      DisplayLabel = 'Data Pedido'
      FieldName = 'DATAPEDIDO'
      Origin = 'DATAPEDIDO'
      Required = True
    end
    object FDQPedidosSTATUS_ID: TIntegerField
      FieldName = 'STATUS_ID'
      Origin = 'STATUS_ID'
    end
  end
  object DSpPedidos: TDataSetProvider
    DataSet = FDQPedidos
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 304
    Top = 280
  end
  object CDsPedidos: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM PEDIDOS'
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'DSpPedidos'
    Left = 408
    Top = 280
    object CDsPedidosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDsPedidosCLIENTE_ID: TIntegerField
      FieldName = 'CLIENTE_ID'
      Origin = 'CLIENTE_ID'
      Required = True
    end
    object CDsPedidosDATAPEDIDO: TSQLTimeStampField
      DisplayLabel = 'Data Pedido'
      FieldName = 'DATAPEDIDO'
      Origin = 'DATAPEDIDO'
      Required = True
    end
    object CDsPedidosSTATUS_ID: TIntegerField
      FieldName = 'STATUS_ID'
    end
  end
  object DSItensPedidos: TDataSource
    DataSet = CDsItensPedidos
    Left = 502
    Top = 408
  end
  object FDQItensPedidos: TFDQuery
    Connection = FDConexao
    SQL.Strings = (
      
        'SELECT'#13#10'    ip.Pedido_ID,'#13#10'    SUM(pr.Valor * ip.Quantidade) AS ' +
        'ValorTotal'#13#10'FROM'#13#10'    ItensPedido ip'#13#10'    JOIN Produtos pr ON ip' +
        '.Produto_ID = pr.ID'#13#10'WHERE'#13#10'    ip.Pedido_ID = :PedidoID -- Subs' +
        'titua :PedidoID pelo ID do pedido desejado'#13#10'GROUP BY'#13#10'    ip.Ped' +
        'ido_ID;')
    Left = 192
    Top = 408
    ParamData = <
      item
        Position = 1
        Name = 'PedidoID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'PedidoID'
        ParamType = ptInput
      end>
    object FDQItensPedidosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQItensPedidosPEDIDO_ID: TIntegerField
      FieldName = 'PEDIDO_ID'
      Origin = 'PEDIDO_ID'
      Required = True
    end
    object FDQItensPedidosPRODUTO_ID: TIntegerField
      FieldName = 'PRODUTO_ID'
      Origin = 'PRODUTO_ID'
      Required = True
    end
    object FDQItensPedidosQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Required = True
    end
    object FDQItensPedidosOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Origin = 'OBSERVACOES'
      Size = 255
    end
    object FDQItensPedidosPRODUTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRODUTO'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
  object DSpItensPedidos: TDataSetProvider
    DataSet = FDQItensPedidos
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 301
    Top = 408
  end
  object CDsItensPedidos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_PEDIDO'
        ParamType = ptInput
      end>
    ProviderName = 'DSpItensPedidos'
    BeforePost = CDsItensPedidosBeforePost
    Left = 408
    Top = 408
    object CDsItensPedidosID: TIntegerField
      FieldName = 'ID'
    end
    object CDsItensPedidosPEDIDO_ID: TIntegerField
      FieldName = 'PEDIDO_ID'
    end
    object CDsItensPedidosPRODUTO_ID: TIntegerField
      FieldName = 'PRODUTO_ID'
    end
    object CDsItensPedidosQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Required = True
    end
    object CDsItensPedidosOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 255
    end
    object CDsItensPedidosPRODUTO: TStringField
      FieldName = 'PRODUTO'
      ReadOnly = True
      Size = 100
    end
  end
  object DSTipoProd: TDataSource
    DataSet = CDsTipoProd
    Left = 521
    Top = 80
  end
  object FDQTipoProd: TFDQuery
    Connection = FDConexao
    SQL.Strings = (
      'SELECT * FROM TIPOPRODUTO')
    Left = 401
    Top = 80
    object FDQTipoProdID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQTipoProdNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 50
    end
  end
  object DSpTipoProd: TDataSetProvider
    DataSet = FDQTipoProd
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 438
    Top = 80
  end
  object CDsTipoProd: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM TIPOPRODUTO'
    Params = <>
    ProviderName = 'DSpTipoProd'
    Left = 478
    Top = 80
    object CDsTipoProdID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDsTipoProdNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 50
    end
  end
  object DSstatus: TDataSource
    DataSet = CDsStatus
    Left = 793
    Top = 208
  end
  object FDQStatus: TFDQuery
    Connection = FDConexao
    SQL.Strings = (
      'SELECT * FROM Status')
    Left = 793
    Top = 16
    object FDQStatusID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQStatusTIPO: TSmallintField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
    end
    object FDQStatusNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 50
    end
  end
  object DSpStatus: TDataSetProvider
    DataSet = FDQStatus
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 793
    Top = 80
  end
  object CDsStatus: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM Status'
    Params = <>
    ProviderName = 'DSpStatus'
    Left = 793
    Top = 144
    object CDsStatusID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDsStatusTIPO: TSmallintField
      FieldName = 'TIPO'
      Required = True
    end
    object CDsStatusNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 50
    end
  end
  object DSItensValorTotal: TDataSource
    DataSet = CDsItensValorTotal
    Left = 518
    Top = 344
  end
  object CDsItensValorTotal: TClientDataSet
    Aggregates = <>
    CommandText = 
      'SELECT'#13#10'    ip.Pedido_ID,'#13#10'    SUM(pr.Valor * ip.Quantidade) AS ' +
      'ValorTotal'#13#10'FROM'#13#10'    ItensPedido ip'#13#10'    JOIN Produtos pr ON ip' +
      '.Produto_ID = pr.ID'#13#10'WHERE'#13#10'    ip.Pedido_ID = :PedidoID -- Subs' +
      'titua :PedidoID pelo ID do pedido desejado'#13#10'GROUP BY'#13#10'    ip.Ped' +
      'ido_ID;'
    Params = <
      item
        DataType = ftUnknown
        Name = 'PedidoID'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSpItensValorTotal'
    BeforePost = CDsItensPedidosBeforePost
    Left = 480
    Top = 344
    object CDsItensValorTotalPEDIDO_ID: TIntegerField
      FieldName = 'PEDIDO_ID'
      Required = True
    end
    object CDsItensValorTotalVALORTOTAL: TFMTBCDField
      FieldName = 'VALORTOTAL'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
  end
  object FDQItensValorTotal: TFDQuery
    Connection = FDConexao
    SQL.Strings = (
      'SELECT'
      '    ip.Pedido_ID,'
      '    SUM(pr.Valor * ip.Quantidade) AS ValorTotal'
      'FROM'
      '    ItensPedido ip'
      '    JOIN Produtos pr ON ip.Produto_ID = pr.ID'
      'WHERE'
      
        '    ip.Pedido_ID = :PedidoID -- Substitua :PedidoID pelo ID do p' +
        'edido desejado'
      'GROUP BY'
      '    ip.Pedido_ID;')
    Left = 408
    Top = 344
    ParamData = <
      item
        Position = 1
        Name = 'PedidoID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQItensValorTotalPEDIDO_ID: TIntegerField
      FieldName = 'PEDIDO_ID'
      Origin = 'PEDIDO_ID'
      Required = True
    end
    object FDQItensValorTotalVALORTOTAL: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORTOTAL'
      Origin = 'VALORTOTAL'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
  end
  object DSpItensValorTotal: TDataSetProvider
    DataSet = FDQItensValorTotal
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 445
    Top = 344
  end
  object DSPedidosEntregas: TDataSource
    DataSet = CDsPedidosEntregas
    Left = 504
    Top = 536
  end
  object FDQPedidosEntregas: TFDQuery
    Connection = FDConexao
    SQL.Strings = (
      'SELECT'
      '    pe.ID,'
      '    pe.pedido_id,'
      '    pe.entrega_id,'
      '    p.DataPedido,'
      '    s.nome as status,'
      '    c.id as clienteid,'
      '    c.nome as clientenome,'
      '    c.endereco as clienteend,'
      
        '    -- Define a prioridade com base no produto de maior priorida' +
        'de no pedido'
      '    CASE'
      
        '        WHEN MAX(CASE WHEN tp.id = 3 THEN 1 ELSE 0 END) = 1 THEN' +
        ' 1 -- Prioridade m'#225'xima (Medicamento Sens'#237'vel)'
      
        '        WHEN MAX(CASE WHEN tp.id = 2 THEN 1 ELSE 0 END) = 1 THEN' +
        ' 2 -- Prioridade alta (Medicamento Controlado)'
      
        '        WHEN MAX(CASE WHEN tp.id = 5 THEN 1 ELSE 0 END) = 1 THEN' +
        ' 3 -- Prioridade m'#233'dia (Produto Perec'#237'vel)'
      '        ELSE 4 -- Prioridade baixa (Demais produtos)'
      '    END AS Prioridade'
      'FROM'
      '    PedidosEntregas pe'
      '    JOIN Pedidos p ON pe.Pedido_ID = p.ID'
      '    JOIN ItensPedido ip ON p.ID = ip.Pedido_ID'
      '    JOIN Clientes c ON c.ID = p.cliente_id'
      '    JOIN Produtos pr ON ip.Produto_ID = pr.ID'
      '    JOIN TipoProduto tp ON pr.Tipo = tp.ID'
      '    JOIN Status s ON p.Status_id = s.ID'
      'WHERE'
      '    pe.entrega_id = :identrega'
      'GROUP BY'
      
        '    pe.ID, pe.pedido_id, pe.entrega_id, p.DataPedido, status, cl' +
        'ienteid, clientenome, clienteend'
      'ORDER BY'
      '    Prioridade, -- Ordena pela prioridade'
      
        '    p.DataPedido; -- Em caso de empate, ordena pela data do pedi' +
        'do')
    Left = 288
    Top = 536
    ParamData = <
      item
        Name = 'IDENTREGA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQPedidosEntregasID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQPedidosEntregasPEDIDO_ID: TIntegerField
      FieldName = 'PEDIDO_ID'
      Origin = 'PEDIDO_ID'
      Required = True
    end
    object FDQPedidosEntregasENTREGA_ID: TIntegerField
      FieldName = 'ENTREGA_ID'
      Origin = 'ENTREGA_ID'
      Required = True
    end
    object FDQPedidosEntregasDATAPEDIDO: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'DATAPEDIDO'
      Origin = 'DATAPEDIDO'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQPedidosEntregasSTATUS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'STATUS'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object FDQPedidosEntregasCLIENTEID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENTEID'
      Origin = 'ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQPedidosEntregasCLIENTENOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENTENOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object FDQPedidosEntregasCLIENTEEND: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENTEEND'
      Origin = 'ENDERECO'
      ProviderFlags = []
      ReadOnly = True
      Size = 255
    end
    object FDQPedidosEntregasPRIORIDADE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PRIORIDADE'
      Origin = 'PRIORIDADE'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object DSpPedidosEntregas: TDataSetProvider
    DataSet = FDQPedidosEntregas
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 360
    Top = 536
  end
  object CDsPedidosEntregas: TClientDataSet
    Aggregates = <>
    CommandText = 
      'SELECT'#13#10'    pe.ID,'#13#10'    pe.pedido_id,'#13#10'    pe.entrega_id,'#13#10'    p' +
      '.DataPedido,'#13#10'    s.nome as status,'#13#10'    c.id as clienteid,'#13#10'   ' +
      ' c.nome as clientenome,'#13#10'    c.endereco as clienteend,'#13#10'    -- D' +
      'efine a prioridade com base no produto de maior prioridade no pe' +
      'dido'#13#10'    CASE'#13#10'        WHEN MAX(CASE WHEN tp.id = 3 THEN 1 ELSE' +
      ' 0 END) = 1 THEN 1 -- Prioridade m'#225'xima (Medicamento Sens'#237'vel)'#13#10 +
      '        WHEN MAX(CASE WHEN tp.id = 2 THEN 1 ELSE 0 END) = 1 THEN' +
      ' 2 -- Prioridade alta (Medicamento Controlado)'#13#10'        WHEN MAX' +
      '(CASE WHEN tp.id = 5 THEN 1 ELSE 0 END) = 1 THEN 3 -- Prioridade' +
      ' m'#233'dia (Produto Perec'#237'vel)'#13#10'        ELSE 4 -- Prioridade baixa (' +
      'Demais produtos)'#13#10'    END AS Prioridade'#13#10'FROM'#13#10'    PedidosEntreg' +
      'as pe'#13#10'    JOIN Pedidos p ON pe.Pedido_ID = p.ID'#13#10'    JOIN Itens' +
      'Pedido ip ON p.ID = ip.Pedido_ID'#13#10'    JOIN Clientes c ON c.ID = ' +
      'p.cliente_id'#13#10'    JOIN Produtos pr ON ip.Produto_ID = pr.ID'#13#10'   ' +
      ' JOIN TipoProduto tp ON pr.Tipo = tp.ID'#13#10'    JOIN Status s ON p.' +
      'Status_id = s.ID'#13#10'WHERE'#13#10'    pe.entrega_id = :identrega'#13#10'GROUP B' +
      'Y'#13#10'    pe.ID, pe.pedido_id, pe.entrega_id, p.DataPedido, status,' +
      ' clienteid, clientenome, clienteend'#13#10'ORDER BY'#13#10'    Prioridade, -' +
      '- Ordena pela prioridade'#13#10'    p.DataPedido; -- Em caso de empate' +
      ', ordena pela data do pedido'
    Params = <
      item
        DataType = ftInteger
        Name = 'identrega'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSpPedidosEntregas'
    Left = 432
    Top = 536
    object CDsPedidosEntregasID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDsPedidosEntregasPEDIDO_ID: TIntegerField
      FieldName = 'PEDIDO_ID'
      Required = True
    end
    object CDsPedidosEntregasENTREGA_ID: TIntegerField
      FieldName = 'ENTREGA_ID'
      Required = True
    end
    object CDsPedidosEntregasDATAPEDIDO: TSQLTimeStampField
      FieldName = 'DATAPEDIDO'
    end
    object CDsPedidosEntregasSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 50
    end
    object CDsPedidosEntregasCLIENTEID: TIntegerField
      FieldName = 'CLIENTEID'
    end
    object CDsPedidosEntregasCLIENTENOME: TStringField
      FieldName = 'CLIENTENOME'
      Size = 100
    end
    object CDsPedidosEntregasCLIENTEEND: TStringField
      FieldName = 'CLIENTEEND'
      Size = 255
    end
    object CDsPedidosEntregasPRIORIDADE: TIntegerField
      FieldName = 'PRIORIDADE'
    end
  end
  object DSPedSemEnt: TDataSource
    DataSet = CDsPedSemEnt
    Left = 504
    Top = 600
  end
  object FQDPedSemEnt: TFDQuery
    Connection = FDConexao
    SQL.Strings = (
      'SELECT'
      '    p.ID AS Pedido_ID,'
      '    p.DataPedido,'
      '    s.nome as status,'
      '    c.id as clienteid,'
      '    c.nome as clientenome,'
      '    c.endereco as clienteend,'
      
        '    -- Define a prioridade com base no produto de maior priorida' +
        'de no pedido'
      '    CASE'
      
        '        WHEN MAX(CASE WHEN tp.id = 3 THEN 1 ELSE 0 END) = 1 THEN' +
        ' 1 -- Prioridade m'#225'xima (Medicamento Sens'#237'vel)'
      
        '        WHEN MAX(CASE WHEN tp.id = 2 THEN 1 ELSE 0 END) = 1 THEN' +
        ' 2 -- Prioridade alta (Medicamento Controlado)'
      
        '        WHEN MAX(CASE WHEN tp.id = 5 THEN 1 ELSE 0 END) = 1 THEN' +
        ' 3 -- Prioridade m'#233'dia (Produto Perec'#237'vel)'
      '        ELSE 4 -- Prioridade baixa (Demais produtos)'
      '    END AS Prioridade'
      'FROM'
      '    Pedidos p'
      '    JOIN ItensPedido ip ON p.ID = ip.Pedido_ID'
      '    JOIN Clientes c ON c.ID = p.cliente_id'
      '    JOIN Produtos pr ON ip.Produto_ID = pr.ID'
      '    JOIN TipoProduto tp ON pr.Tipo = tp.ID'
      '    JOIN Status s ON p.Status_id = s.ID'
      '    LEFT JOIN PedidosEntregas pe ON p.ID = pe.Pedido_ID'
      'WHERE'
      '    pe.Pedido_ID IS NULL AND p.Status_id<=1'
      'GROUP BY'
      
        '    p.ID, p.DataPedido, status, clienteid, clientenome, clientee' +
        'nd'
      'ORDER BY'
      '    Prioridade, -- Ordena pela prioridade'
      
        '    p.DataPedido; -- Em caso de empate, ordena pela data do pedi' +
        'do')
    Left = 288
    Top = 600
    object FQDPedSemEntPEDIDO_ID: TIntegerField
      FieldName = 'PEDIDO_ID'
      Origin = 'ID'
      Required = True
    end
    object FQDPedSemEntDATAPEDIDO: TSQLTimeStampField
      FieldName = 'DATAPEDIDO'
      Origin = 'DATAPEDIDO'
      Required = True
    end
    object FQDPedSemEntSTATUS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'STATUS'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object FQDPedSemEntPRIORIDADE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PRIORIDADE'
      Origin = 'PRIORIDADE'
      ProviderFlags = []
      ReadOnly = True
    end
    object FQDPedSemEntCLIENTEID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENTEID'
      Origin = 'ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object FQDPedSemEntCLIENTENOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENTENOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object FQDPedSemEntCLIENTEEND: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENTEEND'
      Origin = 'ENDERECO'
      ProviderFlags = []
      ReadOnly = True
      Size = 255
    end
  end
  object DSpPedSemEnt: TDataSetProvider
    DataSet = FQDPedSemEnt
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 360
    Top = 600
  end
  object CDsPedSemEnt: TClientDataSet
    Aggregates = <>
    CommandText = 
      'SELECT'#13#10'    p.ID AS Pedido_ID,'#13#10'    p.DataPedido,'#13#10'    s.nome as' +
      ' status,'#13#10'    c.id as clienteid,'#13#10'    c.nome as clientenome,'#13#10'  ' +
      '  c.endereco as clienteend,'#13#10'    -- Define a prioridade com base' +
      ' no produto de maior prioridade no pedido'#13#10'    CASE'#13#10'        WHE' +
      'N MAX(CASE WHEN tp.id = 3 THEN 1 ELSE 0 END) = 1 THEN 1 -- Prior' +
      'idade m'#225'xima (Medicamento Sens'#237'vel)'#13#10'        WHEN MAX(CASE WHEN ' +
      'tp.id = 2 THEN 1 ELSE 0 END) = 1 THEN 2 -- Prioridade alta (Medi' +
      'camento Controlado)'#13#10'        WHEN MAX(CASE WHEN tp.id = 5 THEN 1' +
      ' ELSE 0 END) = 1 THEN 3 -- Prioridade m'#233'dia (Produto Perec'#237'vel)'#13 +
      #10'        ELSE 4 -- Prioridade baixa (Demais produtos)'#13#10'    END A' +
      'S Prioridade'#13#10'FROM'#13#10'    Pedidos p'#13#10'    JOIN ItensPedido ip ON p.' +
      'ID = ip.Pedido_ID'#13#10'    JOIN Clientes c ON c.ID = p.cliente_id'#13#10' ' +
      '   JOIN Produtos pr ON ip.Produto_ID = pr.ID'#13#10'    JOIN TipoProdu' +
      'to tp ON pr.Tipo = tp.ID'#13#10'    JOIN Status s ON p.Status_id = s.I' +
      'D'#13#10'    LEFT JOIN PedidosEntregas pe ON p.ID = pe.Pedido_ID'#13#10'WHER' +
      'E'#13#10'    pe.Pedido_ID IS NULL AND p.Status_id<=1'#13#10'GROUP BY'#13#10'    p.' +
      'ID, p.DataPedido, status, clienteid, clientenome, clienteend'#13#10'OR' +
      'DER BY'#13#10'    Prioridade, -- Ordena pela prioridade'#13#10'    p.DataPed' +
      'ido; -- Em caso de empate, ordena pela data do pedido'
    Params = <>
    ProviderName = 'DSpPedSemEnt'
    Left = 432
    Top = 600
    object CDsPedSemEntPEDIDO_ID: TIntegerField
      FieldName = 'PEDIDO_ID'
      Required = True
    end
    object CDsPedSemEntDATAPEDIDO: TSQLTimeStampField
      FieldName = 'DATAPEDIDO'
      Required = True
    end
    object CDsPedSemEntSTATUS: TStringField
      FieldName = 'STATUS'
      ReadOnly = True
      Size = 50
    end
    object CDsPedSemEntPRIORIDADE: TIntegerField
      FieldName = 'PRIORIDADE'
      ReadOnly = True
    end
    object CDsPedSemEntCLIENTEID: TIntegerField
      FieldName = 'CLIENTEID'
      ReadOnly = True
    end
    object CDsPedSemEntCLIENTENOME: TStringField
      FieldName = 'CLIENTENOME'
      ReadOnly = True
      Size = 100
    end
    object CDsPedSemEntCLIENTEEND: TStringField
      FieldName = 'CLIENTEEND'
      ReadOnly = True
      Size = 255
    end
  end
  object DSProdPedEnt: TDataSource
    DataSet = CDsProdPedEnt
    Left = 504
    Top = 664
  end
  object FDQProdPedEnt: TFDQuery
    Connection = FDConexao
    SQL.Strings = (
      'SELECT'
      '    pr.Nome AS Produto,'
      '    ip.Quantidade,'
      '    pr.Valor AS ValorUnitario,'
      '    (ip.Quantidade * pr.Valor) AS ValorTotal'
      'FROM'
      '    ItensPedido ip'
      '    JOIN Produtos pr ON ip.Produto_ID = pr.ID'
      'WHERE'
      
        '    ip.Pedido_ID = :PedidoID -- Substitua :PedidoID pelo ID do p' +
        'edido desejado'
      'ORDER BY'
      '    pr.Nome;')
    Left = 288
    Top = 664
    ParamData = <
      item
        Name = 'PEDIDOID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQProdPedEntPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Origin = 'PRODUTO'
      Required = True
      Size = 100
    end
    object FDQProdPedEntQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Required = True
    end
    object FDQProdPedEntVALORUNITARIO: TFMTBCDField
      FieldName = 'VALORUNITARIO'
      Origin = 'VALORUNITARIO'
      Precision = 18
      Size = 2
    end
    object FDQProdPedEntVALORTOTAL: TFMTBCDField
      FieldName = 'VALORTOTAL'
      Origin = 'VALORTOTAL'
      Precision = 18
      Size = 2
    end
  end
  object DSpProdPedEnt: TDataSetProvider
    DataSet = FDQProdPedEnt
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 360
    Top = 664
  end
  object CDsProdPedEnt: TClientDataSet
    Aggregates = <>
    CommandText = 
      'SELECT'#13#10'    pr.Nome AS Produto,'#13#10'    ip.Quantidade,'#13#10'    pr.Valo' +
      'r AS ValorUnitario,'#13#10'    (ip.Quantidade * pr.Valor) AS ValorTota' +
      'l'#13#10'FROM'#13#10'    ItensPedido ip'#13#10'    JOIN Produtos pr ON ip.Produto_' +
      'ID = pr.ID'#13#10'WHERE'#13#10'    ip.Pedido_ID = :PedidoID '#13#10'ORDER BY'#13#10'    ' +
      'pr.Nome;'
    Params = <
      item
        DataType = ftUnknown
        Name = 'PedidoID'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSpProdPedEnt'
    Left = 432
    Top = 664
    object CDsProdPedEntPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Required = True
      Size = 100
    end
    object CDsProdPedEntQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Required = True
    end
    object CDsProdPedEntVALORUNITARIO: TFMTBCDField
      FieldName = 'VALORUNITARIO'
      Precision = 18
      Size = 2
    end
    object CDsProdPedEntVALORTOTAL: TFMTBCDField
      FieldName = 'VALORTOTAL'
      Precision = 18
      Size = 2
    end
  end
  object DSAcompEntrega: TDataSource
    DataSet = CDsAcompEntrega
    Left = 504
    Top = 736
  end
  object FDQAcompEntrega: TFDQuery
    ObjectView = False
    Connection = FDConexao
    SQL.Strings = (
      'SELECT'
      '    pe.ID,'
      '    pe.pedido_id,'
      '    pe.entrega_id,'
      '    pe.dataentrega,'
      '    pe.comentarios,'
      '    p.DataPedido,'
      '    s.nome as status,'
      '    c.id as clienteid,'
      '    c.nome as clientenome,'
      '    c.endereco as clienteend,'
      
        '    -- Define a prioridade com base no produto de maior priorida' +
        'de no pedido'
      '    CASE'
      
        '        WHEN MAX(CASE WHEN tp.id = 3 THEN 1 ELSE 0 END) = 1 THEN' +
        ' 1 -- Prioridade m'#225'xima (Medicamento Sens'#237'vel)'
      
        '        WHEN MAX(CASE WHEN tp.id = 2 THEN 1 ELSE 0 END) = 1 THEN' +
        ' 2 -- Prioridade alta (Medicamento Controlado)'
      
        '        WHEN MAX(CASE WHEN tp.id = 5 THEN 1 ELSE 0 END) = 1 THEN' +
        ' 3 -- Prioridade m'#233'dia (Produto Perec'#237'vel)'
      '        ELSE 4 -- Prioridade baixa (Demais produtos)'
      '    END AS Prioridade'
      'FROM'
      '    PedidosEntregas pe'
      '    JOIN Pedidos p ON pe.Pedido_ID = p.ID'
      '    JOIN Entregas e ON pe.entrega_id = e.ID'
      '    JOIN ItensPedido ip ON p.ID = ip.Pedido_ID'
      '    JOIN Clientes c ON c.ID = p.cliente_id'
      '    JOIN Produtos pr ON ip.Produto_ID = pr.ID'
      '    JOIN TipoProduto tp ON pr.Tipo = tp.ID'
      '    JOIN Status s ON pe.Status_id = s.ID'
      'WHERE'
      '    pe.Status_id >= 5'
      'GROUP BY'
      
        '    pe.ID, pe.pedido_id, pe.entrega_id, pe.comentarios, pe.datae' +
        'ntrega, p.DataPedido, status, clienteid, clientenome, clienteend'
      'ORDER BY'
      '    Prioridade, -- Ordena pela prioridade'
      
        '    p.DataPedido; -- Em caso de empate, ordena pela data do pedi' +
        'do')
    Left = 193
    Top = 736
    object FDQAcompEntregaID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQAcompEntregaPEDIDO_ID: TIntegerField
      FieldName = 'PEDIDO_ID'
      Origin = 'PEDIDO_ID'
      Required = True
    end
    object FDQAcompEntregaENTREGA_ID: TIntegerField
      FieldName = 'ENTREGA_ID'
      Origin = 'ENTREGA_ID'
      Required = True
    end
    object FDQAcompEntregaDATAENTREGA: TSQLTimeStampField
      FieldName = 'DATAENTREGA'
      Origin = 'DATAENTREGA'
    end
    object FDQAcompEntregaDATAPEDIDO: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'DATAPEDIDO'
      Origin = 'DATAPEDIDO'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQAcompEntregaSTATUS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'STATUS'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object FDQAcompEntregaCLIENTEID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENTEID'
      Origin = 'ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQAcompEntregaCLIENTENOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENTENOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object FDQAcompEntregaCLIENTEEND: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENTEEND'
      Origin = 'ENDERECO'
      ProviderFlags = []
      ReadOnly = True
      Size = 255
    end
    object FDQAcompEntregaPRIORIDADE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PRIORIDADE'
      Origin = 'PRIORIDADE'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQAcompEntregaCOMENTARIOS: TStringField
      FieldName = 'COMENTARIOS'
      Origin = 'COMENTARIOS'
      Size = 255
    end
  end
  object DSpAcompEntrega: TDataSetProvider
    DataSet = FDQAcompEntrega
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 304
    Top = 736
  end
  object CDsAcompEntrega: TClientDataSet
    Aggregates = <>
    CommandText = 
      'SELECT'#13#10'    pe.ID,'#13#10'    pe.pedido_id,'#13#10'    pe.entrega_id,'#13#10'    p' +
      'e.dataentrega,'#13#10'    pe.comentarios,'#13#10'    p.DataPedido,'#13#10'    s.no' +
      'me as status,'#13#10'    c.id as clienteid,'#13#10'    c.nome as clientenome' +
      ','#13#10'    c.endereco as clienteend,'#13#10'    -- Define a prioridade com' +
      ' base no produto de maior prioridade no pedido'#13#10'    CASE'#13#10'      ' +
      '  WHEN MAX(CASE WHEN tp.id = 3 THEN 1 ELSE 0 END) = 1 THEN 1 -- ' +
      'Prioridade m'#225'xima (Medicamento Sens'#237'vel)'#13#10'        WHEN MAX(CASE ' +
      'WHEN tp.id = 2 THEN 1 ELSE 0 END) = 1 THEN 2 -- Prioridade alta ' +
      '(Medicamento Controlado)'#13#10'        WHEN MAX(CASE WHEN tp.id = 5 T' +
      'HEN 1 ELSE 0 END) = 1 THEN 3 -- Prioridade m'#233'dia (Produto Perec'#237 +
      'vel)'#13#10'        ELSE 4 -- Prioridade baixa (Demais produtos)'#13#10'    ' +
      'END AS Prioridade'#13#10'FROM'#13#10'    PedidosEntregas pe'#13#10'    JOIN Pedido' +
      's p ON pe.Pedido_ID = p.ID'#13#10'    JOIN Entregas e ON pe.entrega_id' +
      ' = e.ID'#13#10'    JOIN ItensPedido ip ON p.ID = ip.Pedido_ID'#13#10'    JOI' +
      'N Clientes c ON c.ID = p.cliente_id'#13#10'    JOIN Produtos pr ON ip.' +
      'Produto_ID = pr.ID'#13#10'    JOIN TipoProduto tp ON pr.Tipo = tp.ID'#13#10 +
      '    JOIN Status s ON pe.Status_id = s.ID'#13#10'WHERE'#13#10'    pe.Status_i' +
      'd >= 5'#13#10'GROUP BY'#13#10'    pe.ID, pe.pedido_id, pe.entrega_id, pe.com' +
      'entarios, pe.dataentrega, p.DataPedido, status, clienteid, clien' +
      'tenome, clienteend'#13#10'ORDER BY'#13#10'    Prioridade, -- Ordena pela pri' +
      'oridade'#13#10'    p.DataPedido; -- Em caso de empate, ordena pela dat' +
      'a do pedido'
    Params = <>
    ProviderName = 'DSpAcompEntrega'
    Left = 408
    Top = 736
    object CDsAcompEntregaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDsAcompEntregaPEDIDO_ID: TIntegerField
      FieldName = 'PEDIDO_ID'
      Required = True
    end
    object CDsAcompEntregaENTREGA_ID: TIntegerField
      FieldName = 'ENTREGA_ID'
      Required = True
    end
    object CDsAcompEntregaDATAENTREGA: TSQLTimeStampField
      FieldName = 'DATAENTREGA'
    end
    object CDsAcompEntregaDATAPEDIDO: TSQLTimeStampField
      FieldName = 'DATAPEDIDO'
      ReadOnly = True
    end
    object CDsAcompEntregaSTATUS: TStringField
      FieldName = 'STATUS'
      ReadOnly = True
      Size = 50
    end
    object CDsAcompEntregaCLIENTEID: TIntegerField
      FieldName = 'CLIENTEID'
      ReadOnly = True
    end
    object CDsAcompEntregaCLIENTENOME: TStringField
      FieldName = 'CLIENTENOME'
      ReadOnly = True
      Size = 100
    end
    object CDsAcompEntregaCLIENTEEND: TStringField
      FieldName = 'CLIENTEEND'
      ReadOnly = True
      Size = 255
    end
    object CDsAcompEntregaPRIORIDADE: TIntegerField
      FieldName = 'PRIORIDADE'
      ReadOnly = True
    end
    object CDsAcompEntregaCOMENTARIOS: TStringField
      FieldName = 'COMENTARIOS'
      Size = 255
    end
  end
end
