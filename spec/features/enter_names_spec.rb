require 'capybara/rspec'
require_relative '../../app.rb'

# feature "Testing infrastructure working!" do
#   scenario "see the testing infrastructure" do
#   visit("/")
#   expect(page).to have_content "Testing infrastructure working!"
#   end
# end

feature "Players fill in names in a form, submit and see names on screen" do
  scenario "should display: 'Tom versus Georgios'" do
    visit("/")
    fill_in :player_one, with: "Tom"
    fill_in :player_two, with: "Georgios"
    click_button "Enter the Arena"
    expect(page).to have_content "Tom versus Georgios"
  end
end
