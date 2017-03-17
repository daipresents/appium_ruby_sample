require_relative '../../spec/spec_helper'

class TopPage

  SEARCH_BOX = 'com.daipresents.tsundoku:id/searchTextBox'
  SEARCH_BOX_XPATH = '//android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.RelativeLayout[1]/android.widget.LinearLayout[2]/android.widget.EditText[1]'
  SEARCH_BUTTON = 'com.daipresents.tsundoku:id/searchButton'
  SEARCH_BUTTON_XPATH = '//android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.RelativeLayout[1]/android.widget.LinearLayout[2]/android.widget.ImageButton[1]'

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
