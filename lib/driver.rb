require_relative '../spec/spec_helper'

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
