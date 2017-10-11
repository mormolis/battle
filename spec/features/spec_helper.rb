def sign_in_and_play
  visit("/")
  fill_in :player_one, with: "Tom"
  fill_in :player_two, with: "Georgios"
  click_button("Enter the Arena")
end