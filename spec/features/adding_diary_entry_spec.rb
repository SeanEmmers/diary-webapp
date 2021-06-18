feature 'adding a new diary entry' do
  scenario 'a new diary entry is added' do
    visit('diary/new')
    fill_in('diary_entry', with: 'Test diary entry')
    click_button('Submit')

    expect(page).to have_content('Test diary entry')
  end
end