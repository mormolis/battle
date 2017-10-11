feature 'Testing infrastructure' do
  scenario 'Can enter a name for player 1' do
    visit '/'
    expect(page).to have_field("name1")
    expect(page).to have_field("name2")
  end
end
