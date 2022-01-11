require_relative '../spec_helper'

feature 'Can see player 2\'s HP' do
  scenario 'can see player 2\'s hp after entering names' do
    visit('/')
    fill_in 'player_one_name', with: 'Aadam'
    fill_in 'player_two_name', with: 'Sam'
    click_button 'submit'
    expect(page).to have_content 'Aadam vs Sam'
    expect(page).to have_content 'Sam: 100HP'
  end
end