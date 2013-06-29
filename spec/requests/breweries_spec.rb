require 'spec_helper'

describe "Breweries" do
  describe "index page" do
    it "should display list of breweries" do
      FactoryGirl.create(:brewery)
      visit breweries_path
      page.should have_content('New Belgium')
    end

    it "should display a link to delete a brewery" do
      FactoryGirl.create(:brewery)
      visit breweries_path
      page.should have_link('Delete')
    end

    it "should display a link to edit a brewery" do
      FactoryGirl.create(:brewery)
      visit breweries_path
      page.should have_link('Edit')
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

    it "should display a link to show a brewery" do
      FactoryGirl.create(:brewery)
      visit breweries_path
      page.should have_link('Show')
    end

  end

  describe "new page" do
    it "should display a new brewery form" do
      visit new_brewery_path
      page.should have_field('brewery[name]')
    end

    it "should display an add brewery button" do
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

  describe "destroy" do
    it "should delete the brewery from the list of breweries" do
      visit new_brewery_path
      fill_in("Name", with: "New Belgium")
      click_button('Add Brewery')
      expect(page).to have_content('New Belgium')
      click_link('Delete')
      expect(page).to have_no_content('New Belgium')
    end
  end

  describe "edit" do
    it "should display a brewery edit form" do
      FactoryGirl.create(:brewery)
      visit breweries_path
      click_link('Edit')
      page.should have_field('brewery[name]')
    end

    it "should update the brewery name" do
      FactoryGirl.create(:brewery)
      visit breweries_path
      click_link('Edit')
      fill_in("Name", with: 'Pateros Creek')
      click_button('Update')
      expect(page).to have_no_content('New Belgium')
    end
  end

  describe "show" do
    it "should display a brewery profile" do
      FactoryGirl.create(:brewery)
      visit breweries_path
      click_link('Show')
      expect(page).to have_content('New Belgium')
    end
  end

end
