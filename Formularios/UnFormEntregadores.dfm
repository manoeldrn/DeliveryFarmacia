object FormEntregadores: TFormEntregadores
  Left = 0
  Top = 0
  Caption = 'Gerenciar Entregadores'
  ClientHeight = 182
  ClientWidth = 809
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  OnClick = FormClick
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 570
    Height = 141
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 568
    ExplicitHeight = 133
    object DBLabeledEdit2: TDBLabeledEdit
      Left = 40
      Top = 40
      Width = 345
      Height = 21
      DataField = 'NOME'
      DataSource = DM_DadosFB.DSEntregadores
      TabOrder = 0
      EditLabel.Width = 27
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome'
    end
    object DBLabeledEdit4: TDBLabeledEdit
      Left = 408
      Top = 40
      Width = 121
      Height = 21
      DataField = 'VEICULO'
      DataSource = DM_DadosFB.DSEntregadores
      TabOrder = 1
      EditLabel.Width = 37
      EditLabel.Height = 13
      EditLabel.Caption = 'Veiculo:'
    end
    object DBLabeledEdit6: TDBLabeledEdit
      Left = 408
      Top = 88
      Width = 121
      Height = 21
      DataField = 'CAPACIDADEMAXIMA'
      DataSource = DM_DadosFB.DSEntregadores
      TabOrder = 2
      EditLabel.Width = 99
      EditLabel.Height = 13
      EditLabel.Caption = 'Capacidade M'#225'xima:'
    end
  end
  object Panel2: TPanel
    Left = 570
    Top = 41
    Width = 239
    Height = 141
    Align = alRight
    Caption = 'Panel2'
    TabOrder = 1
    ExplicitLeft = 568
    ExplicitHeight = 133
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 237
      Height = 139
      Align = alClient
      DataSource = DM_DadosFB.DSEntregadores
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
    Width = 809
    Height = 41
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 807
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 1
      Width = 528
      Height = 39
      DataSource = DM_DadosFB.DSEntregadores
      Align = alLeft
      TabOrder = 0
      OnClick = DBNavigator1Click
    end
  end
end
