

Dado('que eu esteja na pagina de cadastro') do
 visit "/accounts/signup"
end

Quando('eu preencher formulário com {string} e {string}') do |user, pass|
    @form.getInputUser.set user 
    @form.getInputPass.set pass
    @form.getInputConfirmPass.set pass
end

Então('devo clicar em {string}') do |text|
    expect(@form.getEnterButton).to have_text(text)
    @form.getEnterButton.click
end

Então('ser redirecionado para tela de {string}') do |string|
  expect(@form.getTitleLoginPage)
end