require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content and title 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
      expect(page).to have_title('| Sample App')
    end
  end
  
  describe "Help page" do

    it "should have the content and title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
      expect(page).to have_title('| Help')
    end
  end
  
  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
    
    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title('| About Us')
    end    
  end  
end
