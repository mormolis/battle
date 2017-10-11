feature 'Testing infrastructure' do
  context 'homepage' do
    before(:each) do
    visit('/')
    end
    scenario 'Can run app and check page content' do
      expect(page).to have_field("name1")
      expect(page).to have_field("name2")
    end
    scenario 'Can enter a name for player 1' do
      fill_in "name1", with: 'Alex'
      fill_in "name2", with: 'David'
      click_button "Submit"
      expect(page).to have_content('Welcome to the game, Alex and David!')
    end
  end
end
