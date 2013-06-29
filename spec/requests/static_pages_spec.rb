require 'spec_helper'

describe "StaticPages" do
  describe "Home Page" do
    it "should have the content Beer Tracker" do
      visit '/static_pages/home'
      page.should have_content('Beer Tracker')
    end
  end

  describe "About Page" do
    it "should have the content About" do
      visit '/static_pages/about'
      page.should have_content('About')
    end
  end

end
