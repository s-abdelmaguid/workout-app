require 'rails_helper'

RSpec.feature "User Signup" do
  scenario "vaild credentials" do
    visit "/"
    click_link("Sign up")
    fill_in "First name" , with: "john"
    fill_in "Last name" , with: "Doe"
    fill_in "Email" , with: "john@example.com"
    fill_in "Password", with: "Password"
    fill_in "Password confirmation", with: "Password"
    click_button("Sign up")

    expect(page).to have_content("You have signed up successfully.")
    visit "/"
    expect(page).to have_content("John Doe")
  end
end
