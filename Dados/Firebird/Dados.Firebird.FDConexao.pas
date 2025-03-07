unit Dados.Firebird.FDConexao;

interface

uses
  FireDAC.Comp.Client;

var
  FDConnection: TFDConnection;

implementation

initialization
  FDConnection := TFDConnection.Create(nil);
  FDConnection.Params.Add('Database=C:\caminho\para\seu\banco.fdb');
  FDConnection.Params.Add('User_Name=sysdba');
  FDConnection.Params.Add('Password=masterkey');
  FDConnection.Params.Add('DriverID=FB');
  FDConnection.LoginPrompt := False;
  FDConnection.Connected := True;

finalization
  FDConnection.Free;

end.