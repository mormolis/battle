require 'capybara/rspec'
require_relative '../../app.rb'

feature "Player can attack and receives a confirmation" do
  scenario "after singing in player presses the attack button" do
    sign_in_and_play
    click_button("Attack!")
    expect(page).to have_content("Tom attacked Georgios")
  end
end
