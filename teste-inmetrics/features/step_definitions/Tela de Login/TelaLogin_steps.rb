

Dado("que eu esteja na pagina de login") do
  visit "/accounts/login"
end

Então("devo clicar no botão cadastre-se") do
  find(".txt2").click
end

E("ver o formulário {string}") do |text|
    expect(@form.getFormulario).to have_text(text)
end

Quando('Eu clicar no botão {string} sem preencher o formulário') do |text|
  @form.getEnterButton.click
  expect(@form.getEnterButton).to have_text(text)
end

Então('Devo receber a mensagem {string} nos campos login e senha') do |text|
  expect(first('div[data-validate="Campo obrigatório"]'))
  expect(first(:css, ".alert-validate").visible?).to be true
end


Quando('eu faço login com {string} e {string}') do |user, pass|
  @form.getInputUser.set user 
  @form.getInputPass.set pass
  @form.getEnterButton.click
end

Então('devo ver a opção {string}') do |logout|
  expect(@form.LogoutButton).to have_content(/#{logout}/i)
end
