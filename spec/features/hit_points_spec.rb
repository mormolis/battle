feature 'View hit points' do
  scenario 'see Player 2 hit points' do
    visit('/')
    fill_in :name1, with: 'David'
    fill_in :name2, with: 'Alex'
    click_button 'Submit'
    expect(page).to have_content 'Alex has 60HP'
  end
end