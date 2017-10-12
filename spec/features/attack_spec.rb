feature "So that a player can win they can attack" do
  scenario "player 1 attacks player 2" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content "David attacked Alex!"
    expect(page).to have_content "Alex HP reduced by 10 to 50!"  
  end
end
