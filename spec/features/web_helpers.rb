def sign_in_and_play
  visit('/')
  fill_in 'player_one_name', with: 'Aadam'
  fill_in 'player_two_name', with: 'Sam'
  click_button 'submit'
end