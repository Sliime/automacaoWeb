#language: pt

Funcionalidade: Tela de cadastro
 Para que eu possa entrar na página da Inmetrics
 Sendo um usuário
 Preciso me cadastrar para ter meu usuário e senha

   @cadastro
  Cenario: Cadastro
   Dado que eu esteja na pagina de cadastro
   Quando eu preencher formulário com "shyvanaap@deepweb6.com" e "1234"  
   Então devo clicar em "Cadastrar"
   E ser redirecionado para tela de "Login"


