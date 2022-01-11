require_relative '../spec_helper'

feature 'Can see player 2\'s HP' do
  scenario 'can see player 2\'s hp after entering names' do
    sign_in_and_play
    expect(page).to have_content 'Aadam vs Sam'
    expect(page).to have_content 'Sam: 100HP'
  end
end