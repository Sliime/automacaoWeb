class Formulario
  include Capybara::DSL

  def getFormulario
    page.find(".login100-form-title")
  end

  def getEnterButton
    page.find(".login100-form-btn")
  end

  def LogoutButton
    find("li", text: (/Sair/i))
  end

  def getInputUser
    find_field("username")
  end

  def getInputPass
    find_field("pass")
  end

  def getInputConfirmPass
    find_field("confirmpass")
  end

  def getTitleLoginPage
    find("span", :text => "Login")
  end

  def login(user, pass)
    visit "/accounts/login"
    find_field("username").set user
    find_field("pass").set pass
  end
end
