feature 'First page' do
  scenario 'can enter a names for players' do
    visit '/'
    expect(page).to have_field("name1")
    expect(page).to have_field("name2")
  end
end
