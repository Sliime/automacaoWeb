#language: pt

Funcionalidade: Tela de Login
 Para que eu possa entrar na página da Inmetrics
 Sendo um usuário
 Devo entrar no sistema utilizando login e senha

@tela_cadastro
 Cenario: Tela de Cadastro
   Dado que eu esteja na pagina de login
   Então devo clicar no botão cadastre-se 
   E ver o formulário "Cadastre-se"

@login_notuser
 Cenario: Tela de Login sem os dados
 Dado que eu esteja na pagina de login
 Quando Eu clicar no botão "Entre" sem preencher o formulário
 Então Devo receber a mensagem "Campo obrigatório" nos campos login e senha

 @login_happy
 Cenario: Acesso
 Dado que eu esteja na pagina de login
 Quando eu faço login com "gleite@teste.com" e "gleite123"
 Então devo ver a opção "Sair"

 