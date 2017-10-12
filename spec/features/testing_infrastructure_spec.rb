require 'capybara/rspec'
require_relative '../../lib/app'

feature 'Battle' do
  scenario 'check sample text is on homepage' do
    visit('/infrastructure')
    expect(page).to have_content 'Testing infrastructure working!'
  end
end
