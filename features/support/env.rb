require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require_relative 'helper.rb'
require 'faker'

AMBIENTE = ENV['AMBIENTE']
CONFIG = YAML.load_file(File.dirname(__FILE__) + "/ambientes/#{AMBIENTE}.yml")
Capybara.default_max_wait_time = 30
World(Helper)

## register driver according with browser chosen
Capybara.register_driver :headless_chrome do |config|
  if BROWSER.eql?('chrome')
    Capybara::Selenium::Driver.new(config,
    :browser => :chrome,
    :desired_capabilities => Selenium::WebDriver::Remote::Capabilities.chrome(
      'chromeOptions' => {
        'args' => [ "--start-maximized" ]
      }
    )
  )
  elsif BROWSER.eql?('firefox')
    Capybara::Selenium::Driver.new(config, :browser => :firefox, :marionette => true)
  elsif BROWSER.eql?('internet_explorer')
    Capybara::Selenium::Driver.new(config, :browser => :internet_explorer)
  elsif BROWSER.eql?('safari')
    Capybara::Selenium::Driver.new(config, :browser => :safari)
  elsif BROWSER.eql?('poltergeist')
    options = { js_errors: false, window_size: [1440,3000], screen_size: [1440,3000] }
    Capybara::Poltergeist::Driver.new(config, options)
  end
end  
