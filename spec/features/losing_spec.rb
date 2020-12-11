feature 'Ability to lose' do
  scenario 'have LOSE message if player has 0HP' do
    sign_in_and_play
    9.times {
      click_button('Player 1 Attack')
      click_button('Player 2 Attack')
    }
    click_button('Player 1 Attack')
    expect(page).to have_content "YOU LOSE Teddy"
  end
end
