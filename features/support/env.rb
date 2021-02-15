require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'report_builder'


@browser = ENV['BROWSER'] #env environment variable


    Capybara.register_driver :selenium do |app|

    if @browser.eql?('chrome')
        Capybara::Selenium::Driver.new(app, :browser => :chrome)
  
    elsif @browser.eql?('firefox')
        Capybara::Selenium::Driver.new(app, :browser => :firefox, :marionette =>true)

    elsif @browser.eql?('ie')  
        Capybara::Selenium::Driver.new(app, :browser => :internet_explorer)

        end   
    end

    Capybara.configure do |config|
        config.default_driver = :selenium
        config.app_host = 'http://automationpractice.com/index.php'
        config.default_max_wait_time = 5
    end
    