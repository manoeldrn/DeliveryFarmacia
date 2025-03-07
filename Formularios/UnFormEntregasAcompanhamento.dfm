object FormEntregasAcompanhamento: TFormEntregasAcompanhamento
  Left = 0
  Top = 0
  Caption = 'Acompanhamento das Entregas'
  ClientHeight = 386
  ClientWidth = 697
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 697
    Height = 43
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 695
    object Button1: TButton
      Left = 1
      Top = 1
      Width = 280
      Height = 41
      Align = alLeft
      Caption = 'Adicionar/Alterar Comentario do Item selecionado.'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Panel3: TPanel
      Left = 344
      Top = 1
      Width = 352
      Height = 41
      Align = alRight
      TabOrder = 1
      Visible = False
      ExplicitLeft = 342
      object Edit1: TEdit
        Left = 10
        Top = 9
        Width = 207
        Height = 23
        MaxLength = 255
        TabOrder = 0
      end
      object Button2: TButton
        Left = 224
        Top = 8
        Width = 57
        Height = 25
        Caption = 'Salvar'
        TabOrder = 1
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 287
        Top = 8
        Width = 57
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 2
        OnClick = Button3Click
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 43
    Width = 697
    Height = 343
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 695
    ExplicitHeight = 335
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 695
      Height = 341
      Align = alClient
      DataSource = DM_DadosFB.DSAcompEntrega
      PopupMenu = PopupMenu1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ENTREGA_ID'
          Title.Caption = 'Id Entrega'
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PEDIDO_ID'
          Title.Caption = 'Id Pedido'
          Width = 54
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLIENTENOME'
          Title.Caption = 'Cliente'
          Width = 233
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'STATUS'
          Title.Caption = 'Status'
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COMENTARIOS'
          Title.Caption = 'Comentarios'
          Width = 92
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATAENTREGA'
          Title.Caption = 'Data Entrega'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRIORIDADE'
          Title.Caption = 'Prioridade'
          Visible = True
        end>
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 256
    Top = 171
    object AlterarStatus1: TMenuItem
      Caption = 'Alterar Status ->'
      object Pedente1: TMenuItem
        Caption = 'Pedente'
        OnClick = Pedente1Click
      end
      object Entregue1: TMenuItem
        Caption = 'Em Tr'#226'nsito'
        OnClick = Entregue1Click
      end
      object Entregue2: TMenuItem
        Caption = 'Entregue'
        OnClick = Entregue2Click
      end
      object Cancelado1: TMenuItem
        Caption = 'Cancelado'
        OnClick = Cancelado1Click
      end
    end
  end
end
