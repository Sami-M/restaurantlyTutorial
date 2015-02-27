require 'spec_helper'

describe "visit '/'" do
  context "displays ", :driver => :selenium do
    before do
      visit '/'
    end

    it "Restaurantly Spots!" do
      expect(page).to have_content 'Restaurantly Spots!'
    end
  end
end

describe "edit links work" do
  context "displays ", :driver => :selenium do
    it "Restaurantly Spots!" do
      visit '/restaurants/new'
      fill_in 'restaurant_name', with: "mc ruby"
      click_button 'submit!'
      visit '/'
      click_link 'edit'
      fill_in 'restaurant_name', with: "mc rails"
      click_button 'update'
      expect(page).to have_content 'mc rails'
    end
  end
end

describe "destroy links work" do
  context "displays ", :driver => :selenium do
    it "Restaurantly Spots!" do
      visit '/restaurants/new'
      fill_in 'restaurant_name', with: "mc ruby"
      click_button 'submit!'
      expect(page).to have_content 'mc ruby'
      visit '/'
      click_link 'destroy'
      expect(page).to have_no_content 'mc ruby'
    end
  end
end