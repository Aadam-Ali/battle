require_relative '../spec_helper'

feature 'Users enter their name and see it on screen' do
  scenario 'both users enter their name and see it on the screen' do
    visit('/')
    fill_in 'player_one_name', with: 'Aadam'
    fill_in 'player_two_name', with: 'Sam'
    click_button 'submit'
    expect(page).to have_content 'Aadam vs Sam'
  end
end