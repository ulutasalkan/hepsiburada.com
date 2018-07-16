#encoding: UTF-8
require 'capybara'
require 'cucumber'
require 'rspec'
require 'selenium-webdriver'
require 'capybara/dsl'

Capybara.register_driver :selenium do |app|
  # noinspection RubyArgCount
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara.run_server = false
Capybara.default_driver = :selenium
Capybara.javascript_driver = :selenium
Capybara.default_selector = :css
Capybara.default_max_wait_time = 10

Capybara.app_host = 'http://www.google.com'
World(Capybara::DSL)