unit UnFormClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Comp.Client,
  DM_Dados.Firebird, Vcl.Buttons, Vcl.DBCtrls, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Mask;

type
  TFormClientes = class(TForm)
    Panel1: TPanel;
    DBLabeledEdit2: TDBLabeledEdit;
    DBLabeledEdit5: TDBLabeledEdit;
    DBLabeledEdit6: TDBLabeledEdit;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    PBnts: TPanel;
    DBNavigator1: TDBNavigator;
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure FormDestroy(Sender: TObject);
  private
    FDM_DadosFirebird: TDM_DadosFB;
  public
    constructor Create(AOwner: TComponent; ADM_DadosFirebird: TDM_DadosFB); reintroduce;
  end;
  
var
  FormClientes: TFormClientes;
  
implementation

{$R *.dfm}

constructor TFormClientes.Create(AOwner: TComponent; ADM_DadosFirebird: TDM_DadosFB);
begin
  inherited Create(AOwner);
  FDM_DadosFirebird := ADM_DadosFirebird;
  With FDM_DadosFirebird do
  begin
    FDQClientes.Active := True;
    CDsClientes.CommandText := 'SELECT * FROM CLIENTES';
    CDsClientes.Active := True;
  end;
end;

procedure TFormClientes.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  if Button in [nbPost, nbDelete]then
    FDM_DadosFirebird.CDsClientes.ApplyUpdates(-1);
end;

procedure TFormClientes.FormDestroy(Sender: TObject);
begin
    With FDM_DadosFirebird do
  begin
    FDQClientes.Active := False;
    CDsClientes.Active := False;
  end;
  inherited;
end;

end.