object FormPedidos: TFormPedidos
  Left = 0
  Top = 0
  Caption = 'Gerenciar Pedidos'
  ClientHeight = 379
  ClientWidth = 735
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  OnDestroy = FormDestroy
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 531
    Height = 125
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 529
    ExplicitHeight = 117
    object Label1: TLabel
      Left = 40
      Top = 25
      Width = 37
      Height = 13
      Caption = 'Cliente:'
    end
    object Label4: TLabel
      Left = 392
      Top = 25
      Width = 35
      Height = 13
      Caption = 'Status:'
    end
    object DBLabeledEdit2: TDBLabeledEdit
      Left = 40
      Top = 88
      Width = 121
      Height = 21
      DataField = 'DATAPEDIDO'
      DataSource = DM_DadosFB.DSPedidos
      TabOrder = 0
      EditLabel.Width = 77
      EditLabel.Height = 13
      EditLabel.Caption = 'Data do Pedido:'
    end
    object DBLabeledEdit6: TDBLabeledEdit
      Left = 392
      Top = 88
      Width = 121
      Height = 21
      DataField = 'VALORTOTAL'
      DataSource = DM_DadosFB.DSItensValorTotal
      Enabled = False
      TabOrder = 1
      EditLabel.Width = 28
      EditLabel.Height = 13
      EditLabel.Caption = 'Total:'
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 40
      Top = 40
      Width = 321
      Height = 21
      DataField = 'CLIENTE_ID'
      DataSource = DM_DadosFB.DSPedidos
      KeyField = 'ID'
      ListField = 'NOME'
      ListSource = DM_DadosFB.DSClientes
      TabOrder = 2
    end
    object DBLookupComboBox4: TDBLookupComboBox
      Left = 392
      Top = 40
      Width = 121
      Height = 21
      DataField = 'STATUS_ID'
      DataSource = DM_DadosFB.DSPedidos
      KeyField = 'ID'
      ListField = 'NOME'
      ListSource = DM_DadosFB.DSstatus
      TabOrder = 3
    end
  end
  object Panel2: TPanel
    Left = 531
    Top = 41
    Width = 204
    Height = 125
    Align = alRight
    Caption = 'Panel2'
    TabOrder = 1
    ExplicitLeft = 529
    ExplicitHeight = 117
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 202
      Height = 123
      Align = alClient
      DataSource = DM_DadosFB.DSPedidos
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = DBGrid1CellClick
      OnMouseWheel = DBGrid1MouseWheel
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          ReadOnly = True
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATAPEDIDO'
          Width = 100
          Visible = True
        end>
    end
  end
  object PBnts: TPanel
    Left = 0
    Top = 0
    Width = 735
    Height = 41
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 733
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 1
      Width = 528
      Height = 39
      DataSource = DM_DadosFB.DSPedidos
      Align = alLeft
      TabOrder = 0
      OnClick = DBNavigator1Click
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 166
    Width = 735
    Height = 213
    Align = alBottom
    TabOrder = 3
    ExplicitTop = 158
    ExplicitWidth = 733
    object Label2: TLabel
      Left = 275
      Top = 77
      Width = 42
      Height = 13
      Caption = 'Produto:'
    end
    object Label3: TLabel
      Left = 560
      Top = 78
      Width = 24
      Height = 13
      Caption = 'Tipo:'
      Enabled = False
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 733
      Height = 24
      Align = alTop
      Caption = 'Itens do Pedido'
      Color = clGradientInactiveCaption
      ParentBackground = False
      TabOrder = 0
      ExplicitWidth = 731
    end
    object Panel5: TPanel
      Left = 1
      Top = 25
      Width = 733
      Height = 40
      Align = alTop
      TabOrder = 1
      ExplicitWidth = 731
      object DBNavigator2: TDBNavigator
        Left = 1
        Top = 1
        Width = 528
        Height = 38
        DataSource = DM_DadosFB.DSItensPedidos
        Align = alLeft
        TabOrder = 0
        OnClick = DBNavigator2Click
      end
    end
    object Panel6: TPanel
      Left = 1
      Top = 65
      Width = 240
      Height = 147
      Align = alLeft
      Caption = 'Panel2'
      TabOrder = 2
      object DBGrid2: TDBGrid
        Left = 1
        Top = 1
        Width = 238
        Height = 145
        Align = alClient
        DataSource = DM_DadosFB.DSItensPedidos
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'PRODUTO'
            Title.Caption = 'Produto:'
            Width = 136
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QUANTIDADE'
            Title.Caption = 'Qtd.:'
            Width = 56
            Visible = True
          end>
      end
    end
    object DBLabeledEdit1: TDBLabeledEdit
      Left = 275
      Top = 136
      Width = 86
      Height = 21
      DataField = 'QUANTIDADE'
      DataSource = DM_DadosFB.DSItensPedidos
      TabOrder = 3
      EditLabel.Width = 60
      EditLabel.Height = 13
      EditLabel.Caption = 'Quantidade:'
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 275
      Top = 92
      Width = 216
      Height = 21
      DataField = 'PRODUTO_ID'
      DataSource = DM_DadosFB.DSItensPedidos
      KeyField = 'ID'
      ListField = 'NOME'
      ListSource = DM_DadosFB.DSProdutos
      TabOrder = 4
    end
    object DBLabeledEdit3: TDBLabeledEdit
      Left = 376
      Top = 136
      Width = 337
      Height = 21
      DataField = 'CONDICOESARMAZENAMENTO'
      DataSource = DM_DadosFB.DSProdutos
      Enabled = False
      ReadOnly = True
      TabOrder = 5
      EditLabel.Width = 145
      EditLabel.Height = 13
      EditLabel.Caption = 'Condi'#231#245'es de Armazenamento'
    end
    object DBLabeledEdit5: TDBLabeledEdit
      Left = 275
      Top = 176
      Width = 438
      Height = 21
      DataField = 'OBSERVACOES'
      DataSource = DM_DadosFB.DSItensPedidos
      TabOrder = 6
      EditLabel.Width = 67
      EditLabel.Height = 13
      EditLabel.Caption = 'Observa'#231#245'es:'
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 560
      Top = 92
      Width = 153
      Height = 21
      DataField = 'TIPO'
      DataSource = DM_DadosFB.DSProdutos
      Enabled = False
      KeyField = 'ID'
      ListField = 'NOME'
      ListSource = DM_DadosFB.DSTipoProd
      ReadOnly = True
      TabOrder = 7
    end
    object DBLabeledEdit4: TDBLabeledEdit
      Left = 497
      Top = 92
      Width = 57
      Height = 21
      DataField = 'VALOR'
      DataSource = DM_DadosFB.DSProdutos
      Enabled = False
      ReadOnly = True
      TabOrder = 8
      EditLabel.Width = 28
      EditLabel.Height = 13
      EditLabel.Caption = 'Valor:'
    end
  end
end
