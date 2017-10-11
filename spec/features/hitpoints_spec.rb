require 'capybara/rspec'
require_relative '../../app.rb'

feature "After signing in players should see their names and the remaining hitpoints" do
  scenario "Should display Tom (60HP) versus Jerry (60HP)" do
    sign_in_and_play
    expect(page).to have_content("Tom (60HP) versus Georgios (60HP)")
  end
end