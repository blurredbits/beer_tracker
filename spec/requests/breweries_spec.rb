require 'spec_helper'

describe "Breweries" do
  describe "index page" do
    it "should display list of breweries" do
      visit breweries_path
      page.should have_content('Breweries')
    end
  end
end
