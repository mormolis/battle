require 'capybara/rspec'
require_relative '../../lib/app'

feature 'Battle' do
  scenario 'Player 1 attacks!' do
    sign_in_and_play
    click_button 'Player 1 attack!'
    expect(page).to have_content 'Ed attacks Hugo!'
  end
end
