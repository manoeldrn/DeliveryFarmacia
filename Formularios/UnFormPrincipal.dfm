object FormPrincipal: TFormPrincipal
  Left = 0
  Top = 0
  Caption = 'Sistema de Delivery para Farm'#225'cia'
  ClientHeight = 438
  ClientWidth = 727
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 727
    Height = 97
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 725
    object btnProdutos: TButton
      Left = 113
      Top = 1
      Width = 112
      Height = 95
      Align = alLeft
      Caption = 'Produtos'
      TabOrder = 0
      StyleElements = [seFont, seBorder]
      OnClick = btnProdutosClick
    end
    object btnPedidos: TButton
      Left = 337
      Top = 1
      Width = 112
      Height = 95
      Align = alLeft
      Caption = 'Pedidos'
      TabOrder = 1
      StyleElements = [seFont, seBorder]
      OnClick = btnPedidosClick
    end
    object btnClientes: TButton
      Left = 1
      Top = 1
      Width = 112
      Height = 95
      Align = alLeft
      Caption = 'Clientes'
      TabOrder = 2
      StyleElements = [seFont, seBorder]
      OnClick = btnClientesClick
    end
    object btnEntregadores: TButton
      Left = 225
      Top = 1
      Width = 112
      Height = 95
      Align = alLeft
      Caption = 'Entregadores'
      TabOrder = 3
      StyleElements = [seFont, seBorder]
      OnClick = btnEntregadoresClick
    end
    object btnEntregas: TButton
      Left = 449
      Top = 1
      Width = 112
      Height = 95
      Align = alLeft
      Caption = 'Entregas'
      DropDownMenu = PopupMenu1
      Style = bsSplitButton
      TabOrder = 4
      StyleElements = [seFont, seBorder]
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 176
    Top = 208
    object Criar1: TMenuItem
      Caption = 'Criar'
      OnClick = Criar1Click
    end
    object Criar2: TMenuItem
      Caption = 'Acompanhar'
      OnClick = Criar2Click
    end
  end
end
