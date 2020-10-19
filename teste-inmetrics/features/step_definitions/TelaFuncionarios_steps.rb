Dado("que {string} é um novo funcionario") do |string|
  @cadastro.getDatabase(string)
end

Quando("eu faço o cadastro deste funcionario") do
  @cadastro.newFunc.click
  @cadastro.registroForm
  expect(@cadastro.getCheckCamp).to be_checked
end

Então("devo ver o novo funcionário na lista") do
end
