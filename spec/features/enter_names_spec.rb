feature 'Entering names' do
  scenario 'Can fill out form and see result' do
    visit('/')
    within("form") do
      fill_in('Player1', with: 'Melba')
      fill_in('Player2', with: 'Teddy')
    end
    click_button('Submit')
    expect(page).to have_content 'Melba & Teddy'
  end
end