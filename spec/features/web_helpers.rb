def sign_in_and_play
  visit('/')
  within('form') do
    fill_in('Player1', with: 'Melba')
    fill_in('Player2', with: 'Teddy')
  end
  click_button('Submit')
end