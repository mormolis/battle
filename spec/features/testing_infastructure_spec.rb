feature 'Testing infrastructure' do
  context 'homepage' do
    before(:each) do
    visit('/')
    end
    scenario 'Can run app and check page content' do
      expect(page).to have_content('Testing infrastructure working!')
    end
    scenario 'Can enter a name for player 1' do
      fill_in :name, with: 'Alex'
      click_button "Submit"
      expect(page).to have_content('Alex')
    end
  end
end
