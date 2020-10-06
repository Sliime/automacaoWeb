#language: pt
@login
Funcionalidade: Lista de Funcionario
 Para que eu possa gerenciar a lista de funcionário
 Sendo um usuário
 Devo entrar no sistema utilizando login e senha e cadastrar um funcionario

@new_func
 Esquema do Cenario: Cadastro de Funcionario
 O Gestor quer cadastrar um novo funcionario atráves do formulário
 
 Dado que <codigo> é um novo funcionario
 Quando eu faço o cadastro deste funcionario
 Então devo ver o novo funcionário na lista

Exemplos: 
|  codigo        |
| "funcionario"  |
| "funcionario2" |