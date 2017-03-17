require_relative '../../spec/spec_helper'

class TopPage

  SEARCH_BOX    = 'com.daipresents.tsundoku:id/searchTextBox'
  SEARCH_BUTTON = 'com.daipresents.tsundoku:id/searchButton'

  def search(keyword)
    input_search_keyword(keyword)
    tap_search_button
    SearchResultPage.new
  end

  def input_search_keyword(keyword)
    find_element(:id, SEARCH_BOX).send_keys keyword
    TopPage.new
  end

  def tap_search_button
    find_element(:id, SEARCH_BUTTON).click
    TopPage.new
  end
end
