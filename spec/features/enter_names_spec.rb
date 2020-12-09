feature 'Entering names' do
  scenario 'Can fill out form and see result' do
    sign_in_and_play
    expect(page).to have_content 'Melba & Teddy'
  end
end