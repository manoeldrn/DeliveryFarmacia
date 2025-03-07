unit UnFormProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB,
  FireDAC.Comp.Client, Vcl.Buttons, Vcl.DBCtrls, Vcl.ExtCtrls, DM_Dados.Firebird,
  Vcl.Mask, Vcl.Grids, Vcl.DBGrids;

type
  TFormProdutos = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBLabeledEdit1: TDBLabeledEdit;
    DBLabeledEdit2: TDBLabeledEdit;
    DBLabeledEdit3: TDBLabeledEdit;
    DBLabeledEdit5: TDBLabeledEdit;
    DBLabeledEdit6: TDBLabeledEdit;
    PBnts: TPanel;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    procedure FormDestroy(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
  private
    FDM_DadosFirebird: TDM_DadosFB;
  public
    constructor Create(AOwner: TComponent; ADM_DadosFirebird: TDM_DadosFB); reintroduce;
  end;

var
  FormProdutos: TFormProdutos;

implementation

{$R *.dfm}

constructor TFormProdutos.Create(AOwner: TComponent; ADM_DadosFirebird: TDM_DadosFB);
begin
  inherited Create(AOwner);
  FDM_DadosFirebird := ADM_DadosFirebird;
  With FDM_DadosFirebird do
  begin
    CDsProdutos.CommandText := 'SELECT * FROM PRODUTOS';
    CDsProdutos.Active      := True;
    CDsTipoProd.Active      := True;
  end;
end;

procedure TFormProdutos.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  if Button in [nbPost, nbDelete]then
    FDM_DadosFirebird.CDsProdutos.ApplyUpdates(-1);
end;

procedure TFormProdutos.FormDestroy(Sender: TObject);
begin
  With FDM_DadosFirebird do
  begin
    CDsProdutos.Active := False;
    FDQProdutos.Active := False;
  end;
  inherited;
end;

end.
