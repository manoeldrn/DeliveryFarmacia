unit UnFormEntregadores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Comp.Client,
  DM_Dados.Firebird, Vcl.Buttons, Vcl.DBCtrls, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Mask;

type
  TFormEntregadores = class(TForm)
    Panel1: TPanel;
    DBLabeledEdit2: TDBLabeledEdit;
    DBLabeledEdit4: TDBLabeledEdit;
    DBLabeledEdit6: TDBLabeledEdit;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    PBnts: TPanel;
    DBNavigator1: TDBNavigator;
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure FormClick(Sender: TObject);
  private
    FDM_DadosFirebird: TDM_DadosFB;
  public
    constructor Create(AOwner: TComponent; ADM_DadosFirebird: TDM_DadosFB); reintroduce;
  end;
  
var
  FormEntregadores: TFormEntregadores;
  
implementation

{$R *.dfm}

constructor TFormEntregadores.Create(AOwner: TComponent; ADM_DadosFirebird: TDM_DadosFB);
begin
  inherited Create(AOwner);
  FDM_DadosFirebird := ADM_DadosFirebird;
  With FDM_DadosFirebird do
  begin
    FDQEntregadores.Active := True;
    CDsEntregadores.CommandText := 'SELECT * FROM ENTREGADORES';
    CDsEntregadores.Active := True;
  end;
end;

procedure TFormEntregadores.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  if Button in [nbPost, nbDelete]then
    FDM_DadosFirebird.CDsEntregadores.ApplyUpdates(-1);
end;

procedure TFormEntregadores.FormClick(Sender: TObject);
begin
  With FDM_DadosFirebird do
  begin
    FDQEntregadores.Active := False;
    CDsEntregadores.Active := False;
  end;
  inherited;
end;

end.