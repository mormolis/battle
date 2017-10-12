require 'capybara/rspec'
require_relative '../../lib/app'

feature 'Battle' do
  scenario 'players entering names' do
    sign_in_and_play
    expect(page).to have_content 'Ed vs. Hugo'
  end
end
