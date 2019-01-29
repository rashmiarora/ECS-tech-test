require 'capybara'
require 'cucumber'
require 'capybara/dsl'
require 'rails'
require 'selenium-webdriver'

Capybara.register_driver :selenium_firefox do |app|
  Capybara::Selenium::Driver.new(app, :browser => :firefox)
end
Capybara.default_driver = :selenium_firefox

Capybara.run_server = true
Capybara.app_host = "http://localhost:3000"


After do
  Capybara.reset_sessions!
end


World(Capybara::DSL)