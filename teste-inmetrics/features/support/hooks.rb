Before do
  @form = Formulario.new
end

Before("@login") do
  @form.login("gleite@teste.com", "gleite123")
  @form.getEnterButton.click
end
