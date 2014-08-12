require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Music Fridays'" do
      visit '/static_pages/home'
      expect(page).to have_content('Music Fridays')
    end
  end
end