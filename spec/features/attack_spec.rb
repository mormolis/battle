feature "So that a player can win they can attack" do
  scenario "player 1 attacks player 2" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content "David attacked Alex!"
  end
  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    click_link 'OK'
    expect(page).to have_content "David: 60HP vs. Alex: 50HP"
  end
end
