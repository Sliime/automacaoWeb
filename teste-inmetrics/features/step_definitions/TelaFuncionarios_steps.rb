Dado("que {string} é um novo funcionario") do |string|
  file = YAML.load_file(File.join(Dir.pwd, "features/support/fixtures/funcionarios.yaml"))
  @funcionario = file[string]
  puts @funcionario
end

Quando("eu faço o cadastro deste funcionario") do
  func = find('a[href="/empregados/new_empregado"]')
  func.click
  fill_in "nome", with: @funcionario["nome"]
end

Então("devo ver o novo funcionário na lista") do
end
