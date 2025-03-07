unit UnFormEntregas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Comp.Client,
  DM_Dados.Firebird, Vcl.Buttons, Vcl.DBCtrls, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Mask;

type
  TFormEntregas = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBLabeledEdit2: TDBLabeledEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel6: TPanel;
    PBnts: TPanel;
    DBNavigator1: TDBNavigator;
    DBLabeledEdit6: TDBLabeledEdit;
    Panel5: TPanel;
    DBGrid3: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button4: TButton;
    DBLookupComboBox4: TDBLookupComboBox;
    Label4: TLabel;
    DBLabeledEdit3: TDBLabeledEdit;
    DBGrid2: TDBGrid;
    DBLabeledEdit1: TDBLabeledEdit;
    DBGrid4: TDBGrid;
    Label2: TLabel;
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure DBGrid3CellClick(Column: TColumn);
  private
    FDM_DadosFirebird: TDM_DadosFB;
    procedure AtualizarItens;
  public
    constructor Create(AOwner: TComponent; ADM_DadosFirebird: TDM_DadosFB); reintroduce;
  end;
  
var
  FormEntregas: TFormEntregas;

Const
  SelectStatusE      = 'SELECT * FROM STATUS WHERE TIPO = 1'; //Tipo=1 para status relacionados as Entregas;
  SelectEntregas     = 'SELECT * FROM ENTREGAS';
  LimitEntregador    = 'Atingiu o limite de pedidos do entregador!';

implementation

{$R *.dfm}

procedure TFormEntregas.Button1Click(Sender: TObject);
begin
  if not (FDM_DadosFirebird.CDsEntregas.FieldByName('Status_ID').OldValue >= 6) or
       not (FDM_DadosFirebird.CDsEntregas.FieldByName('Status_ID').Value >= 6) then
  begin
    if (FDM_DadosFirebird.CDsPedidosEntregas.RecordCount<FDM_DadosFirebird.CDsEntregadoresCAPACIDADEMAXIMA.Value) then
      FDM_DadosFirebird.InserirPedidoEntrega(FDM_DadosFirebird.CDsPedSemEntPEDIDO_ID.Value,FDM_DadosFirebird.CDsEntregasID.Value)
    else
      ShowMessage(LimitEntregador);
  end
  else
    ShowMessage(MsgRegEntrBloq);
end;

procedure TFormEntregas.Button2Click(Sender: TObject);
begin
  if not (FDM_DadosFirebird.CDsEntregas.FieldByName('Status_ID').OldValue >= 6) or
       not (FDM_DadosFirebird.CDsEntregas.FieldByName('Status_ID').Value >= 6) then
    FDM_DadosFirebird.RemoverPedidoEntrega(FDM_DadosFirebird.CDsPedidosEntregasID.Value)
  else
    ShowMessage(MsgRegEntrBloq);
end;

procedure TFormEntregas.Button4Click(Sender: TObject);
begin
  if not (FDM_DadosFirebird.CDsEntregas.FieldByName('Status_ID').OldValue >= 6) or
       not (FDM_DadosFirebird.CDsEntregas.FieldByName('Status_ID').Value >= 6) then
    FDM_DadosFirebird.AtualizarStatusEntrega(FDM_DadosFirebird.CDsEntregasID.Value,6)
  else
    ShowMessage(MsgRegEntrBloq);
end;

constructor TFormEntregas.Create(AOwner: TComponent; ADM_DadosFirebird: TDM_DadosFB);
begin
  inherited Create(AOwner);
  FDM_DadosFirebird := ADM_DadosFirebird;
  With FDM_DadosFirebird do
  begin
    CDsEntregas.Active        := True;
    CDsEntregadores.Active    := True;
    CDsPedidosEntregas.Active := True;

    CDsPedSemEnt.Active       := True;
    With FDM_DadosFirebird.CDsStatus do
    begin
      Close;
      CommandText := SelectStatusE;
      Open;
    end;
    AtualizarItens;

    CdsProdPedEnt.Close;
    CDsProdPedEnt.ParamByName('PedidoID').Value := FDM_DadosFirebird.CDsPedSemEntPEDIDO_ID.Value;
    CDsProdPedEnt.Open;
  end;
end;

procedure TFormEntregas.AtualizarItens;
begin
  With FDM_DadosFirebird.CDsPedidosEntregas do
  begin
    Close;
    ParamByName('identrega').AsInteger := FDM_DadosFirebird.CDsEntregas.FieldByName('ID').AsInteger;
    Open;
  end;
end;

procedure TFormEntregas.DBGrid1CellClick(Column: TColumn);
begin
  AtualizarItens;
end;

procedure TFormEntregas.DBGrid3CellClick(Column: TColumn);
begin
  FDM_DadosFirebird.CdsProdPedEnt.Close;
  FDM_DadosFirebird.CDsProdPedEnt.ParamByName('PedidoID').Value := FDM_DadosFirebird.CDsPedSemEntPEDIDO_ID.Value;
  FDM_DadosFirebird.CDsProdPedEnt.Open;
end;

procedure TFormEntregas.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  if Button in [nbPost, nbDelete]then
  begin
    if (FDM_DadosFirebird.CDsEntregas.FieldByName('Status_ID').OldValue >= 6) or
       (FDM_DadosFirebird.CDsEntregas.FieldByName('Status_ID').Value >= 6) then
    begin
      ShowMessage(MsgRegEntrBloq);
      FDM_DadosFirebird.CDsEntregas.Cancel;
      FDM_DadosFirebird.CDsEntregas.Close;
      FDM_DadosFirebird.CDsEntregas.Open;
      Exit;
    end;
    FDM_DadosFirebird.CDsEntregas.ApplyUpdates(-1);
  end;
end;

procedure TFormEntregas.FormDestroy(Sender: TObject);
begin
  With FDM_DadosFirebird do
  begin
    CDsEntregas.Active          := False;
    CDsPedidos.Active           := False;
    CDsEntregadores.Active      := False;
  end;
  inherited;
end;

end.
