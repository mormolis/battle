feature 'View hit points' do
  scenario 'see hit points' do
    sign_in_and_play
    expect(page).to have_content 'David: 60HP vs. Alex: 60HP'
  end
end
