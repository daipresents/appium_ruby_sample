require_relative './spec_helper'

RSpec.describe TopPage do
  context 'Search Keyword' do

    it 'can go to search result' do
      Appium::Logger.info 'Start.'
      expect(find_element(:id, TopPage::SEARCH_BUTTON)).to be_a(Selenium::WebDriver::Element)
      expect(D.find(TopPage::SEARCH_BUTTON)).to be_a(Selenium::WebDriver::Element)

      expect(find_element(:id, TopPage::SEARCH_BUTTON)).to be_a(Selenium::WebDriver::Element)
      expect(D.find(TopPage::SEARCH_BUTTON_XPATH)).to be_a(Selenium::WebDriver::Element)

      TopPage.new.search('agile')

      Appium::Logger.info 'End.'

    end
  end
end
