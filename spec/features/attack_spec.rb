feature 'Decrease player 2 points' do
  scenario 'Player 1 can attack Player 2' do
    sign_in_and_play
    click_button('Player 1 Attack')
    expect(page).to have_content 'Teddy HP: 90'
  end
end

feature 'attacking' do
  scenario 'it switches turns afterwards' do
    sign_in_and_play
    click_button('Player 1 Attack')
    expect(page).not_to have_button 'Player 1 Attack'
  end
end
  