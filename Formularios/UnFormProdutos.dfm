object FormProdutos: TFormProdutos
  Left = 0
  Top = 0
  Caption = 'Gerenciar Produtos'
  ClientHeight = 275
  ClientWidth = 830
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
    Width = 591
    Height = 234
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 589
    ExplicitHeight = 226
    object Label1: TLabel
      Left = 408
      Top = 24
      Width = 24
      Height = 13
      Caption = 'Tipo:'
    end
    object DBLabeledEdit1: TDBLabeledEdit
      Left = 40
      Top = 40
      Width = 81
      Height = 21
      DataField = 'CODIGO'
      DataSource = DM_DadosFB.DSProdutos
      TabOrder = 0
      EditLabel.Width = 33
      EditLabel.Height = 13
      EditLabel.Caption = 'C'#243'digo'
    end
    object DBLabeledEdit2: TDBLabeledEdit
      Left = 40
      Top = 88
      Width = 345
      Height = 21
      DataField = 'NOME'
      DataSource = DM_DadosFB.DSProdutos
      TabOrder = 1
      EditLabel.Width = 27
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome'
    end
    object DBLabeledEdit3: TDBLabeledEdit
      Left = 40
      Top = 136
      Width = 81
      Height = 21
      DataField = 'QUANTIDADE'
      DataSource = DM_DadosFB.DSProdutos
      TabOrder = 2
      EditLabel.Width = 56
      EditLabel.Height = 13
      EditLabel.Caption = 'Quantidade'
    end
    object DBLabeledEdit5: TDBLabeledEdit
      Left = 40
      Top = 182
      Width = 489
      Height = 21
      DataField = 'CONDICOESARMAZENAMENTO'
      DataSource = DM_DadosFB.DSProdutos
      TabOrder = 3
      EditLabel.Width = 149
      EditLabel.Height = 13
      EditLabel.Caption = 'Condi'#231#245'es de Armazenamento:'
    end
    object DBLabeledEdit6: TDBLabeledEdit
      Left = 408
      Top = 88
      Width = 121
      Height = 21
      DataField = 'DATAVALIDADE'
      DataSource = DM_DadosFB.DSProdutos
      TabOrder = 4
      EditLabel.Width = 85
      EditLabel.Height = 13
      EditLabel.Caption = 'Data de Validade:'
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 408
      Top = 40
      Width = 121
      Height = 21
      DataField = 'TIPO'
      DataSource = DM_DadosFB.DSProdutos
      KeyField = 'ID'
      ListField = 'NOME'
      ListSource = DM_DadosFB.DSTipoProd
      TabOrder = 5
    end
  end
  object Panel2: TPanel
    Left = 591
    Top = 41
    Width = 239
    Height = 234
    Align = alRight
    Caption = 'Panel2'
    TabOrder = 1
    ExplicitLeft = 589
    ExplicitHeight = 226
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 237
      Height = 232
      Align = alClient
      DataSource = DM_DadosFB.DSProdutos
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'NOME'
          ReadOnly = True
          Visible = True
        end>
    end
  end
  object PBnts: TPanel
    Left = 0
    Top = 0
    Width = 830
    Height = 41
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 828
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 1
      Width = 528
      Height = 39
      DataSource = DM_DadosFB.DSProdutos
      Align = alLeft
      TabOrder = 0
      OnClick = DBNavigator1Click
    end
  end
end
