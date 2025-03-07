object FormEntregas: TFormEntregas
  Left = 0
  Top = 0
  Caption = 'Gerenciar Entregas'
  ClientHeight = 507
  ClientWidth = 928
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
    Width = 724
    Height = 127
    Align = alClient
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 722
    ExplicitHeight = 119
    object Label1: TLabel
      Left = 24
      Top = 25
      Width = 58
      Height = 13
      Caption = 'Entregador:'
    end
    object Label4: TLabel
      Left = 440
      Top = 25
      Width = 35
      Height = 13
      Caption = 'Status:'
    end
    object DBLabeledEdit2: TDBLabeledEdit
      Left = 580
      Top = 40
      Width = 101
      Height = 21
      DataField = 'DATAENTREGA'
      DataSource = DM_DadosFB.DSEntregas
      TabOrder = 0
      EditLabel.Width = 83
      EditLabel.Height = 13
      EditLabel.Caption = 'Data da Entrega:'
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 24
      Top = 40
      Width = 193
      Height = 21
      DataField = 'ENTREGADOR_ID'
      DataSource = DM_DadosFB.DSEntregas
      KeyField = 'ID'
      ListField = 'NOME'
      ListSource = DM_DadosFB.DSEntregadores
      TabOrder = 1
    end
    object DBLabeledEdit6: TDBLabeledEdit
      Left = 228
      Top = 40
      Width = 93
      Height = 21
      Ctl3D = True
      DataField = 'CAPACIDADEMAXIMA'
      DataSource = DM_DadosFB.DSEntregadores
      Enabled = False
      ParentCtl3D = False
      TabOrder = 2
      EditLabel.Width = 167
      EditLabel.Height = 13
      EditLabel.Caption = 'Capacidade M'#225'xima do Entregador'
    end
    object DBLookupComboBox4: TDBLookupComboBox
      Left = 440
      Top = 40
      Width = 121
      Height = 21
      DataField = 'STATUS_ID'
      DataSource = DM_DadosFB.DSEntregas
      KeyField = 'ID'
      ListField = 'NOME'
      ListSource = DM_DadosFB.DSstatus
      TabOrder = 3
    end
  end
  object Panel2: TPanel
    Left = 724
    Top = 41
    Width = 204
    Height = 127
    Align = alRight
    Caption = 'Panel2'
    TabOrder = 1
    ExplicitLeft = 722
    ExplicitHeight = 119
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 202
      Height = 125
      Align = alClient
      DataSource = DM_DadosFB.DSEntregas
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = DBGrid1CellClick
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          ReadOnly = True
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATAENTREGA'
          Width = 117
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 168
    Width = 928
    Height = 339
    Align = alBottom
    TabOrder = 2
    ExplicitTop = 160
    ExplicitWidth = 926
    object Label2: TLabel
      Left = 304
      Top = 118
      Width = 47
      Height = 13
      Caption = 'Produtos:'
      Enabled = False
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 926
      Height = 24
      Align = alTop
      Caption = 
        'Lista de Pedidos Disponiveis                                    ' +
        '                      --------------------------------          ' +
        '                                          Lista de Pedidos da En' +
        'trega Atual'
      Color = clGradientInactiveCaption
      ParentBackground = False
      TabOrder = 0
      ExplicitWidth = 924
    end
    object Panel6: TPanel
      Left = 639
      Top = 25
      Width = 288
      Height = 313
      Align = alRight
      Caption = 'Panel2'
      TabOrder = 1
      ExplicitLeft = 637
      object DBGrid2: TDBGrid
        Left = 1
        Top = 1
        Width = 286
        Height = 311
        Align = alClient
        DataSource = DM_DadosFB.DSPedidosEntregas
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'DATAPEDIDO'
            Title.Caption = 'Data do Pedido'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PEDIDO_ID'
            Title.Caption = 'ID Pedido'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRIORIDADE'
            Title.Caption = 'Prioridade'
            Width = 53
            Visible = True
          end>
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 25
      Width = 288
      Height = 313
      Align = alLeft
      Caption = 'Panel2'
      TabOrder = 2
      object DBGrid3: TDBGrid
        Left = 1
        Top = 1
        Width = 286
        Height = 311
        Align = alClient
        DataSource = DM_DadosFB.DSPedSemEnt
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnCellClick = DBGrid3CellClick
        Columns = <
          item
            Expanded = False
            FieldName = 'DATAPEDIDO'
            Title.Caption = 'Data do Pedido'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PEDIDO_ID'
            Title.Caption = 'ID Pedido'
            Width = 103
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRIORIDADE'
            Title.Caption = 'Prioridade'
            Width = 53
            Visible = True
          end>
      end
    end
    object Button1: TButton
      Left = 370
      Top = 219
      Width = 201
      Height = 33
      Caption = 'Adicionar Pedido ->'
      TabOrder = 3
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 370
      Top = 258
      Width = 201
      Height = 33
      Caption = '<- Remover Pedido'
      TabOrder = 4
      OnClick = Button2Click
    end
    object Button4: TButton
      Left = 370
      Top = 297
      Width = 201
      Height = 34
      Caption = 'Enviar Pedidos para Entrega'
      TabOrder = 5
      OnClick = Button4Click
    end
    object DBLabeledEdit3: TDBLabeledEdit
      Left = 304
      Top = 94
      Width = 321
      Height = 21
      DataField = 'CLIENTEEND'
      DataSource = DM_DadosFB.DSPedSemEnt
      Enabled = False
      ReadOnly = True
      TabOrder = 6
      EditLabel.Width = 49
      EditLabel.Height = 13
      EditLabel.Caption = 'Endere'#231'o:'
    end
    object DBLabeledEdit1: TDBLabeledEdit
      Left = 304
      Top = 52
      Width = 321
      Height = 21
      DataField = 'CLIENTENOME'
      DataSource = DM_DadosFB.DSPedSemEnt
      Enabled = False
      ReadOnly = True
      TabOrder = 7
      EditLabel.Width = 37
      EditLabel.Height = 13
      EditLabel.Caption = 'Cliente:'
    end
    object DBGrid4: TDBGrid
      Left = 304
      Top = 134
      Width = 321
      Height = 76
      DataSource = DM_DadosFB.DSProdPedEnt
      TabOrder = 8
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'PRODUTO'
          Title.Caption = 'Produto'
          Width = 170
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QUANTIDADE'
          Title.Alignment = taRightJustify
          Title.Caption = 'Qtd.'
          Width = 43
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALORUNITARIO'
          Title.Caption = 'Valor Un.'
          Width = 62
          Visible = True
        end>
    end
  end
  object PBnts: TPanel
    Left = 0
    Top = 0
    Width = 928
    Height = 41
    Align = alTop
    TabOrder = 3
    ExplicitWidth = 926
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 1
      Width = 528
      Height = 39
      DataSource = DM_DadosFB.DSEntregas
      Align = alLeft
      TabOrder = 0
      OnClick = DBNavigator1Click
    end
  end
end
