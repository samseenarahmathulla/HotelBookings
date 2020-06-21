require "rails_helper"

feature "signing in" do  
  
  
  
  def fill_in_sigin_fields
    user = Factory(:user)
    fill_in "user[email]", with: user.email
    fill_in "user[password]", with: user.password
    click_button "Log in"
  end
    
    
    
  scenario "checks authentiction:" do
      visit root_path
      click_link "Log in"
      fill_in_sigin_fields
      expect(page).to have_content("Signed in successfully.")
  end
  
end