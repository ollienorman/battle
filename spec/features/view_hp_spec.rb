feature 'Viewing hit points' do
  scenario 'Can see each players hit points' do
    sign_in_and_play
    expect(page).to have_content 'Teddy HP: 10'
  end
end