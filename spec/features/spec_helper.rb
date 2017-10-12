def sign_in_and_play
  visit('/')
  fill_in :player1, with: 'Ed'
  fill_in :player2, with: 'Hugo'
  click_button 'Submit'
end
