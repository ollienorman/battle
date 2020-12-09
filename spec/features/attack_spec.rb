feature 'Decrease player 2 points' do
  scenario 'Player 1 can attack Player 2' do
    sign_in_and_play
    click_button('player_1_attack')
    expect(page).to have_content 'Teddy HP: 9'
  end
end
