require 'capybara/rspec'
require_relative '../../lib/app'
require 'spec_helper'

feature 'Battle' do
  scenario 'checking opponents hit points' do
    sign_in_and_play
    expect(page).to have_content 'Hugo\'s hit points: 0'
  end
end
