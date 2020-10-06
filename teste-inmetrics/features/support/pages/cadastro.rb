class FormularioCadastro
  include Capybara::DSL

  def ChamaCadastro
    page.find(".login100-form-title")
  end
end
