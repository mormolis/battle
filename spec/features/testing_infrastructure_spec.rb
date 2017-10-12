require 'capybara/rspec'
require_relative '../../lib/app'

feature 'Battle' do
  scenario 'check sample text is on homepage' do
    visit('/infrastructure')
    expect(page).to have_content 'Testing infrastructure working!'
  end

  context 'Ed and Hugo are playing' do
    before do
      visit('/')
      fill_in :player1, with: 'Ed'
      fill_in :player2, with: 'Hugo'
      click_button 'Submit'
    end

    scenario 'players entering names' do
      expect(page).to have_content 'Ed vs. Hugo'
    end

    scenario 'checking opponents hit points' do
      expect(page).to have_content 'Hugo hit points: 0'
    end
  end
end
