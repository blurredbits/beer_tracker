require 'spec_helper'

describe "Breweries" do
  describe "index page" do
    it "should display list of breweries" do
      FactoryGirl.create(:brewery)
      visit breweries_path
      page.should have_content('New Belgium')
    end

    it "should display add brewery button" do
      visit breweries_path
      find_link('Add Brewery')
    end

    it "should go to add new brewery when link is clicked" do
      visit breweries_path
      click_link('Add Brewery')
      expect(page).to have_content('New Brewery')
    end
  end

  describe "new page" do
    it "should display a new brewery form" do
      visit new_brewery_path
      page.should have_field('brewery[name]')
    end

    it "should display a add brewery button" do
      visit new_brewery_path
      find_button('Add Brewery')
    end

    it "should return to the list of breweries when the add brewery button is clicked" do
      visit new_brewery_path
      fill_in("Name", with: "New Belgium")
      click_button('Add Brewery')
      expect(page).to have_content('New Belgium')
    end

  end
end
