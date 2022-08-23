#language: pt
|------------------------------------------------------------------------------------------------------------------------|
    Funcionalidade: Cadastros
    Contexto:  Dado que o usuario esteja acessando a pagina bugbank
|------------------------------------------------------------------------------------------------------------------------|

Cenário: Cadastro com sucesso
Dado que o usuario insira email e senha validos
Quando clicar no botao de cadastro
Então sera apresentado um modal com o numero da conta do usuario 
E o usuario deve ser direcionado para a tela de login

Cenário: email ja cadastrado
Dado que o usuario insira email e senha ja cadastrados na base de dados
Quando tentar efetuar o cadastro
Então deve ser apresentado um modal com a mensagem "já existe uma conta cadastrada com este e-mail" 


Cenário: cadastro com email invalido
Dado que o usuario insira email invalido ou senha
Quando tentar efetuar o cadastro
Então deve ser apresentado abaixo do campo de preenchimento de e-mail uma mensagem em vermelho "Email inválido" 

|------------------------------------------------------------------------------------------------------------------------|
    Funcionalidade: Tranferencias
    Contexto:  Dado que o usuario esteja logado com credenciais validas
|------------------------------------------------------------------------------------------------------------------------|

Cenário: Transferencia finalizada com sucesso
Dado que o usuario insira os dados solicitados pelo formulario de transferencia
Quando clicar em "Transferir agora"
Então deve ser apresentado um modal com uma mensagem "Tranferencia realizada com sucesso"
E o valor referente a transferencia deve ser debitado da conta do usuario
E o valor referente a tranferencia efetuada deve ser creditado a conta destino

Cenário: Transferencia sem saldo em conta
Dado que o usuario insira os dados solicitados pelo formulario de transferencia
Quando clicar em "Transferir agora"
E nao tiver saldo em conta
Então deve ser apresentado um modal com uma mensagem "Você não possui saldo suficiente"

Cenário: Transferencia sem numero de conta do destinatario
Dado que o usuario insira um valor
E nao insira o numero de conta destino
Quando clicar em "Transferir agora"
Então deve ser apresentado abaixo do campo de preenchimento de numero da conta uma mensagem em vermelho "Insira um numero de conta destino"
