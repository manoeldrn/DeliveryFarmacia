unit UnFormEntregasAcompanhamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCGrids, Vcl.StdCtrls, Vcl.ExtCtrls, DM_Dados.Firebird,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Menus;

type
  TFormEntregasAcompanhamento = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Button1: TButton;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    Edit1: TEdit;
    Button2: TButton;
    Button3: TButton;
    PopupMenu1: TPopupMenu;
    AlterarStatus1: TMenuItem;
    Pedente1: TMenuItem;
    Entregue1: TMenuItem;
    Entregue2: TMenuItem;
    Cancelado1: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Pedente1Click(Sender: TObject);
    procedure Entregue1Click(Sender: TObject);
    procedure Entregue2Click(Sender: TObject);
    procedure Cancelado1Click(Sender: TObject);
  private
    { Private declarations }
    FDM_DadosFirebird: TDM_DadosFB;
  public
    constructor Create(AOwner: TComponent; ADM_DadosFirebird: TDM_DadosFB); reintroduce;
  end;

var
  FormEntregasAcompanhamento: TFormEntregasAcompanhamento;

implementation

{$R *.dfm}

procedure TFormEntregasAcompanhamento.Button1Click(Sender: TObject);
begin
  Panel3.Visible := True;
end;

procedure TFormEntregasAcompanhamento.Button2Click(Sender: TObject);
begin
  FDM_DadosFirebird.AtualizarComentariosEntrega(FDM_DadosFirebird.CDsAcompEntregaID.Value,Edit1.Text);
  FDM_DadosFirebird.CDsAcompEntrega.Refresh;
  Panel3.Visible := False;
end;

procedure TFormEntregasAcompanhamento.Button3Click(Sender: TObject);
begin
  Panel3.Visible := False;
end;

procedure TFormEntregasAcompanhamento.Cancelado1Click(Sender: TObject);
begin
  FDM_DadosFirebird.AtualizarStatusPE(FDM_DadosFirebird.CDsAcompEntregaID.Value,8);
  FDM_DadosFirebird.CDsAcompEntrega.Refresh;
end;

constructor TFormEntregasAcompanhamento.Create(AOwner: TComponent; ADM_DadosFirebird: TDM_DadosFB);
begin
  inherited Create(AOwner);
  FDM_DadosFirebird := ADM_DadosFirebird;
  With FDM_DadosFirebird do
  begin
    CDsAcompEntrega.Active := True;
  end;
end;

procedure TFormEntregasAcompanhamento.Entregue1Click(Sender: TObject);
begin
  FDM_DadosFirebird.AtualizarStatusPE(FDM_DadosFirebird.CDsAcompEntregaID.Value,6);
  FDM_DadosFirebird.CDsAcompEntrega.Refresh;
end;

procedure TFormEntregasAcompanhamento.Entregue2Click(Sender: TObject);
begin
  FDM_DadosFirebird.AtualizarStatusPE(FDM_DadosFirebird.CDsAcompEntregaID.Value,7);
  FDM_DadosFirebird.CDsAcompEntrega.Refresh;
end;

procedure TFormEntregasAcompanhamento.Pedente1Click(Sender: TObject);
begin
  FDM_DadosFirebird.AtualizarStatusPE(FDM_DadosFirebird.CDsAcompEntregaID.Value,5);
  FDM_DadosFirebird.CDsAcompEntrega.Refresh;
end;

end.
