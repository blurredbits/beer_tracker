require 'spec_helper'

describe "StaticPages" do
  describe "Home Page" do
    it "should have the content Beer Tracker" do
      visit '/static_pages/home'
      page.should have_content('Beer Tracker')
    end
  end
end
