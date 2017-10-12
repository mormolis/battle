require 'capybara/rspec'
require_relative '../../lib/app'

feature 'Battle' do
  before { sign_in_and_play }
  scenario 'A player attacks!' do
    click_button 'Attack!'
    expect(page).to have_content 'Ed attacks!'
  end

  scenario 'A player attacks, hit points reduce!' do
    expect { click_button 'Attack!' }.to change { $game.players.first.hitpoints }.by(-10)
  end
end
