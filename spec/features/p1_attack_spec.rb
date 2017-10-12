require 'capybara/rspec'
require_relative '../../lib/app'

feature 'Battle' do
  before { sign_in_and_play }
  scenario 'Player 1 attacks!' do
    click_button 'Player 1 attack!'
    expect(page).to have_content 'Ed attacks Hugo!'
  end

  scenario 'Player 1 attacks, hit points reduce!' do
    expect { click_button 'Player 1 attack!' }.to change { $player2.hitpoints }.by(-10)
  end
end
