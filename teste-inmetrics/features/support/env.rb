require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"
require "rspec"
#require "httparty"

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = "http://www.inmrobo.tk"
end
