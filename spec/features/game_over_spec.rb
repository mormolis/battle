feature 'game ends' do
  scenario 'game is over when a players HP is 0' do
    sign_in_and_play
    while $game.player_2.hp_value > 0
      click_button 'Attack'
      click_link 'OK'
    end
    expect(page).to have_content "David has won!"
  end
end