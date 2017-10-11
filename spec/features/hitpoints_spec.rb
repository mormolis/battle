require 'capybara/rspec'
require_relative '../../app.rb'

feature "After signing in players should see their names and the remaining hitpoints" do
  scenario "Should display Tom (60HP) versus Jerry (60HP)" do
    visit("/")
    fill_in :player_one, with: "Tom"
    fill_in :player_two, with: "Jerry"
    click_button("Enter the Arena")
    expect(page).to have_content("Tom (60HP) versus Jerry (60HP)")
  end
end