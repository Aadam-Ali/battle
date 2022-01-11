require_relative '../spec_helper'

feature 'players can attack each other' do
  scenario 'player 1 attacks player 2' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content "Aadam attacked Sam"
  end
end