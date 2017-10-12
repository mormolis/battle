require 'capybara/rspec'
require_relative '../../lib/app'
require 'spec_helper'

feature 'Switch turns' do
  context 'seeing who\'s turn it is' do
    scenario 'switching turns' do
      sign_in_and_play
      expect(page).to have_content "Ed's turn!"
    end

    scenario 'after player 1 attacks' do
      sign_in_and_play
      click_button 'Attack!'
      click_link 'OK'
      expect(page).to have_content "Hugo's turn!"
    end
  end
end
