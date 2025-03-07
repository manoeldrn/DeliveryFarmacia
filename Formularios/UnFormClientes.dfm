object FormClientes: TFormClientes
  Left = 0
  Top = 0
  Caption = 'Gerenciar Clientes'
  ClientHeight = 233
  ClientWidth = 814
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
    Width = 575
    Height = 192
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 573
    ExplicitHeight = 184
    object DBLabeledEdit2: TDBLabeledEdit
      Left = 40
      Top = 40
      Width = 345
      Height = 21
      DataField = 'NOME'
      DataSource = DM_DadosFB.DSClientes
      TabOrder = 0
      EditLabel.Width = 27
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome'
    end
    object DBLabeledEdit5: TDBLabeledEdit
      Left = 40
      Top = 94
      Width = 489
      Height = 21
      DataField = 'ENDERECO'
      DataSource = DM_DadosFB.DSClientes
      TabOrder = 1
      EditLabel.Width = 49
      EditLabel.Height = 13
      EditLabel.Caption = 'Endere'#231'o:'
    end
    object DBLabeledEdit6: TDBLabeledEdit
      Left = 408
      Top = 40
      Width = 121
      Height = 21
      DataField = 'TELEFONE'
      DataSource = DM_DadosFB.DSClientes
      TabOrder = 2
      EditLabel.Width = 46
      EditLabel.Height = 13
      EditLabel.Caption = 'Telefone:'
    end
  end
  object Panel2: TPanel
    Left = 575
    Top = 41
    Width = 239
    Height = 192
    Align = alRight
    Caption = 'Panel2'
    TabOrder = 1
    ExplicitLeft = 573
    ExplicitHeight = 184
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 237
      Height = 190
      Align = alClient
      DataSource = DM_DadosFB.DSClientes
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
    Width = 814
    Height = 41
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 812
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 1
      Width = 528
      Height = 39
      DataSource = DM_DadosFB.DSClientes
      Align = alLeft
      TabOrder = 0
      OnClick = DBNavigator1Click
    end
  end
end
