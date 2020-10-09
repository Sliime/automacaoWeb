class Cadastro
  include Capybara::DSL

  def getDatabase(string)
    file = YAML.load_file(File.join(Dir.pwd, "features/support/fixtures/funcionarios.yaml"))
    @funcionario = file[string]
  end

  def newFunc
    find('a[href="/empregados/new_empregado"]')
  end

  def registroForm
    fill_in "nome", with: @funcionario["nome"]
    fill_in "cpf", with: @funcionario["cpf"]
    fill_in "cargo", with: @funcionario["cargo"]
    fill_in "salario", with: @funcionario["salario"]
    fill_in "adimissao", with: @funcionario["admissão"]
  end
end
