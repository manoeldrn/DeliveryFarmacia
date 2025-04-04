Desenvolvedor: Manoel Douglas Rufino Filho

Versão do Delphi: Embarcadero® Delphi 12 Version 29.0.51961.7529
Versão do Banco: Firebird 2.5.9

Estrutura do Projeto

_Raiz
  |___Dados
  |     |__Firebird
  |            |____DB.FDB (Banco de dados)
  |            |____[*.pas]/[*.dfm]/[DB.sql]
  |
  |___Formulários
  |        |_____[*.pas]/[*.dfm]
  |
  |___[*.dpr]/[*.dproj]/[*.res]
  |
  |___DeliveryFarmacia.exe (Aplicação)


Para executar o projeto basta instalar o Firebird 2.5.9 localmente e executar a aplicação.
Para compilar o projeto recomendo a versão comunitária do delphi, versão 12.

Princípios SOLID Aplicados

    Single Responsibility Principle (SRP):

        O formulário principal é responsável apenas por criar e gerenciar os formulários.

        Os formulários são responsáveis apenas por exibir e manipular os dados.

    Open/Closed Principle (OCP):

        Os formulários estão aberto para extensão (pode receber novos recursos) mas fechado para modificação (não precisa ser alterado para adicionar novos comportamentos).

    Liskov Substitution Principle (LSP):

        Os formulários podem ser substituídos por qualquer outro formulário que use o mesmo TDM_DadosFirebird.

    Interface Segregation Principle (ISP):

        Os formulários depende apenas do TDM_DadosFirebird, sem precisar conhecer detalhes de implementação.

    Dependency Inversion Principle (DIP):

        Os formulários recebem o TDM_DadosFirebird via injeção de dependência, dependendo de uma abstração (o Data Module) e não de uma implementação concreta.

4. Gestão de Memória

    O TDM_DadosFirebird é criado no formulário principal e passado para os formulários.

    Os formulários são criados e destruídos dinamicamente, garantindo que a memória seja liberada corretamente após o uso.

    O TDM_DadosFirebird é liberado apenas quando o formulário principal é destruído, garantindo que ele seja compartilhado entre os formulários.

5. Como Funciona

    Formulário Principal:

        Cria o TDM_DadosFirebird no evento Create.

        Abre o formulário de produtos ao clicar no botão, passando o TDM_DadosFirebird como dependência.

        Libera o TDM_DadosFirebird no evento Destroy.

    Os Formulários:

        Recebe o TDM_DadosFirebird via injeção de dependência.

        Usa o TDM_DadosFirebird para acessar e manipular os dados.

        É destruído após o fechamento, liberando a memória.

6. Benefícios

    Desacoplamento:

        Os formulários não precisam criar ou gerenciar o TDM_DadosFirebird.

    Reutilização:

        O TDM_DadosFirebird pode ser compartilhado entre vários formulários.

    Gestão de Memória:

        Os formulários são destruídos após o uso, evitando vazamentos de memória.
