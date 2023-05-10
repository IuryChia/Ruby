#require "capybara/cucumber"

require "capybara"
require "capybara/dsl"
require "capybara/rspec/matchers"
require "selenium-webdriver"
require "site_prism"
require_relative "page_helper.rb"

World(PageObjects)
World(Capybara::DSL)
World(Capybara::RSpecMatchers)

Capybara.configure do |config|
  config.default_driver = :selenium
  config.app_host = "http://localhost:3000"
  config.default_max_wait_time = 5
end
