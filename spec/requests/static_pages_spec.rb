require 'spec_helper'

describe "StaticPages" do
  describe "Home Page" do
    it "should have the content Beer Tracker" do
      visit static_pages_home_path
      page.should have_content('Beer Tracker')
    end

    it "should have the right title" do
      visit static_pages_home_path
      page.should have_selector('title', text: "Beer Tracker | Home")
    end
  end

  describe "About Page" do
    it "should have the content About" do
      visit static_pages_about_path
      page.should have_content('About')
    end

    it "should have the right title" do
      visit static_pages_about_path
      page.should have_selector('title', text: "Beer Tracker | About")
    end
  end

end
