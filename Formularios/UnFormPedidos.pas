unit UnFormPedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DM_Dados.Firebird,
  FireDAC.Comp.Client, Vcl.Buttons, Vcl.DBCtrls, Vcl.ExtCtrls, Data.DB, Data.SqlTimSt,
  Vcl.Grids, Vcl.DBGrids, Vcl.Mask;

type
  TFormPedidos = class(TForm)
    Panel1: TPanel;
    DBLabeledEdit2: TDBLabeledEdit;
    DBLabeledEdit6: TDBLabeledEdit;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    PBnts: TPanel;
    DBNavigator1: TDBNavigator;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    DBNavigator2: TDBNavigator;
    Panel6: TPanel;
    DBGrid2: TDBGrid;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    DBLabeledEdit1: TDBLabeledEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    Label2: TLabel;
    DBLabeledEdit3: TDBLabeledEdit;
    DBLabeledEdit5: TDBLabeledEdit;
    Label3: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    Label4: TLabel;
    DBLabeledEdit4: TDBLabeledEdit;
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure FormDestroy(Sender: TObject);
    procedure DBNavigator2Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1MouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
  private
    FDM_DadosFirebird: TDM_DadosFB;
    procedure AtualizarItens;
  public
    constructor Create(AOwner: TComponent; ADM_DadosFirebird: TDM_DadosFB); reintroduce;
  end;

var
  FormPedidos: TFormPedidos;

implementation

{$R *.dfm}

constructor TFormPedidos.Create(AOwner: TComponent; ADM_DadosFirebird: TDM_DadosFB);
begin
  inherited Create(AOwner);
  FDM_DadosFirebird := ADM_DadosFirebird;

  With FDM_DadosFirebird do
  begin
    CDsPedidos.CommandText    := SelectPedidos;
    CDsPedidos.Active         := True;
    CDsClientes.Active        := True;
    CDsProdutos.Active        := True;
    CDsTipoProd.Active        := True;

    With FDM_DadosFirebird.CDsStatus do
    begin
      Close;
      CommandText := SelectStatusP;
      Open;
    end;

    AtualizarItens;
  end;
end;

procedure TFormPedidos.AtualizarItens;
begin
  With FDM_DadosFirebird.CDsItensPedidos do
  begin
    Close;
    CommandText := SelectItensPedidos;
    ParamByName('ID_PEDIDO').AsInteger := FDM_DadosFirebird.CDsPedidos.FieldByName('ID').AsInteger;
    Open;
  end;
  With FDM_DadosFirebird.CDsItensValorTotal do
  begin
    Close;
    CommandText := SelectItensPedVT;
    ParamByName('PedidoID').AsInteger := FDM_DadosFirebird.CDsPedidos.FieldByName('ID').AsInteger;
    Open;
  end;
end;

procedure TFormPedidos.DBGrid1CellClick(Column: TColumn);
begin
  AtualizarItens;
end;

procedure TFormPedidos.DBGrid1MouseWheel(Sender: TObject; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
begin
  AtualizarItens;
end;

procedure TFormPedidos.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
  if Button = nbInsert then
  begin
    FDM_DadosFirebird.CDsPedidosDATAPEDIDO.Value    := DateTimeToSQLTimeStamp(Now);
    FDM_DadosFirebird.CDsPedidosSTATUS_ID.AsInteger := 1;
    FDM_DadosFirebird.CDsItensPedidos.Close;
    FDM_DadosFirebird.CDsItensValorTotal.Close;
  end;

  if Button in [nbPost, nbDelete]then
  begin
    if (FDM_DadosFirebird.CDsPedidos.FieldByName('Status_ID').OldValue >= 2) or
       (FDM_DadosFirebird.CDsPedidos.FieldByName('Status_ID').Value >= 2) then
    begin
      ShowMessage(MsgRegEntrBloq);
      FDM_DadosFirebird.CDsPedidos.Cancel;
      FDM_DadosFirebird.CDsPedidos.Close;
      FDM_DadosFirebird.CDsPedidos.Open;
      Exit;
    end;

    FDM_DadosFirebird.CDsPedidos.ApplyUpdates(-1);
    FDM_DadosFirebird.CDsPedidos.Close;
    FDM_DadosFirebird.CDsPedidos.Open;
    FDM_DadosFirebird.CDsPedidos.Last;
    AtualizarItens;
  end;
end;

procedure TFormPedidos.DBNavigator2Click(Sender: TObject; Button: TNavigateBtn);
begin
  if Button in [nbPost, nbDelete]then
  begin
    if (FDM_DadosFirebird.CDsPedidos.FieldByName('Status_ID').OldValue >= 2) or
       (FDM_DadosFirebird.CDsPedidos.FieldByName('Status_ID').Value >= 2) then
    begin
      ShowMessage(MsgRegEntrBloq);
      FDM_DadosFirebird.CDsItensPedidos.Cancel;
      FDM_DadosFirebird.CDsItensPedidos.Close;
      FDM_DadosFirebird.CDsItensPedidos.Open;
      Exit;
    end;
    FDM_DadosFirebird.CDsItensPedidos.ApplyUpdates(-1);
    FDM_DadosFirebird.CDsItensPedidos.Close;
    FDM_DadosFirebird.CDsItensPedidos.Open;
    FDM_DadosFirebird.CDsItensPedidos.Last;
    AtualizarItens;
  end;
end;

procedure TFormPedidos.FormDestroy(Sender: TObject);
begin
  With FDM_DadosFirebird do
  begin
    FDQPedidos.Active         := False;
    CDsPedidos.Active         := False;
    FDQClientes.Active        := False;
    FDQItensPedidos.Active    := False;
    CDsItensPedidos.Active    := False;
    FDQProdutos.Active        := False;
  end;
  inherited;
end;

end.
