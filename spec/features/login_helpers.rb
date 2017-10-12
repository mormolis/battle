def sign_in_and_play
  visit('/')
  fill_in :name1, with: 'David'
  fill_in :name2, with: 'Alex'
  click_button 'Submit'
end
