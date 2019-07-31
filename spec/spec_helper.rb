require 'rubygems'
require 'rspec'
require 'rspec/expectations'
require 'appium_lib'
require 'appium_lib/logger'

require_relative '../lib/pages/top_page'
require_relative '../lib/pages/search_result_page'


RSpec.configure { |c|
  c.before(:each) {
    caps = Appium.load_appium_txt(file: './appium.txt', verbose: true)
    @driver = Appium::Driver.new(caps).start_driver
    @driver.manage.timeouts.implicit_wait = 5
    Appium.promote_appium_methods Object
    Appium::Logger.level = Logger::DEBUG
  }

  c.after(:each) {
    @driver.quit
  }
}

module D
  def self.find(*args)
    what = args[0]
    Appium::Logger.debug "D.find: #{what}"

    if what.start_with?('//')
      # xpath
      RSpec.driver.find_element(:xpath, what)
    else
      # id
      RSpec.driver.find_element(:id, what)
    end
  end
end
