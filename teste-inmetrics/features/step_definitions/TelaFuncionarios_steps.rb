Dado("que {string} é um novo funcionario") do |string|
  @cadastro.getDatabase(string)
end

Quando("eu faço o cadastro deste funcionario") do
  @cadastro.newFunc.click
  @cadastro.registroForm
  kk = find("input[value=clt]")
  expect(kk).to be_checked
end

Então("devo ver o novo funcionário na lista") do
end
