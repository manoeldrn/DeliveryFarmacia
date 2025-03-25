unit UnFormPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, DM_Dados.Firebird,
  Vcl.Menus;

type
  TFormPrincipal = class(TForm)
    Panel1: TPanel;
    btnProdutos: TButton;
    btnPedidos: TButton;
    btnClientes: TButton;
    btnEntregadores: TButton;
    btnEntregas: TButton;
    PopupMenu1: TPopupMenu;
    Criar1: TMenuItem;
    Criar2: TMenuItem;
    procedure btnProdutosClick(Sender: TObject);
    procedure btnClientesClick(Sender: TObject);
    procedure btnPedidosClick(Sender: TObject);
    procedure btnEntregadoresClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Criar1Click(Sender: TObject);
    procedure Criar2Click(Sender: TObject);
  private
    { Private declarations }
    FDM_DadosFirebird: TDM_DadosFB;
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

uses
  UnFormProdutos, UnFormClientes, UnFormPedidos, UnFormEntregas, UnFormEntregadores,
  UnFormEntregasAcompanhamento;

{$R *.dfm}

procedure TFormPrincipal.FormCreate(Sender: TObject);
begin
  inherited;
  FDM_DadosFirebird := TDM_DadosFB.Create(Self);
  FDM_DadosFirebird.FDConexao.Params.Database := ExtractFilePath(Application.ExeName)+'\Dados\Firebird\DB.fdb';
  if not(FileExists(FDM_DadosFirebird.FDConexao.Params.Database)) then
  begin
    ShowMessage('Banco de dados não encontrado!');
    Application.Terminate;
  end
  else
    FDM_DadosFirebird.FDConexao.Connected :=True;
end;

procedure TFormPrincipal.FormDestroy(Sender: TObject);
begin
  FDM_DadosFirebird.Free; // Libera o Data Module
  inherited;
end;

procedure TFormPrincipal.btnProdutosClick(Sender: TObject);
var
  FormProdutos: TFormProdutos;
begin
  FormProdutos := TFormProdutos.Create(Self, FDM_DadosFirebird);
  try
    FormProdutos.ShowModal;
  finally
    FormProdutos.Free;
  end;
end;

procedure TFormPrincipal.Criar1Click(Sender: TObject);
var
  FormEntregas: TFormEntregas;
begin
  FormEntregas := TFormEntregas.Create(Self, FDM_DadosFirebird);
  try
    FormEntregas.ShowModal;
  finally
    FormEntregas.Free;
  end;
end;

procedure TFormPrincipal.Criar2Click(Sender: TObject);
var
  FormEntregaA: TFormEntregasAcompanhamento;
begin
  FormEntregaA := TFormEntregasAcompanhamento.Create(Self, FDM_DadosFirebird);
  try
    FormEntregaA.ShowModal;
  finally
    FormEntregaA.Free;
  end;
end;

procedure TFormPrincipal.btnClientesClick(Sender: TObject);
var
  FormClientes: TFormClientes;
begin
  FormClientes := TFormClientes.Create(Self, FDM_DadosFirebird);
  try
    FormClientes.ShowModal;
  finally
    FormClientes.Free;
  end;
end;

procedure TFormPrincipal.btnPedidosClick(Sender: TObject);
var
  FormPedidos: TFormPedidos;
begin
  FormPedidos := TFormPedidos.Create(Self, FDM_DadosFirebird);
  try
    FormPedidos.ShowModal;
  finally
    FormPedidos.Free;
  end;
end;

procedure TFormPrincipal.btnEntregadoresClick(Sender: TObject);
var
  FormEntregadores: TFormEntregadores;
begin
  FormEntregadores := TFormEntregadores.Create(Self, FDM_DadosFirebird);
  try
    FormEntregadores.ShowModal;
  finally
    FormEntregadores.Free;
  end;
end;

end.
