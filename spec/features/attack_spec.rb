require_relative '../spec_helper'

feature 'players can attack each other' do
  scenario 'player 1 attacks player 2' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content "Aadam attacked Sam"
  end

  scenario 'player 1 attacks player 2 and updates hp' do
    sign_in_and_play
    click_link 'Attack'
    click_link 'Continue'
    expect(page).to have_content 'Sam: 90HP'
  end

  scenario 'player 1 attacks player 2, player 2 attacks player 1' do
    sign_in_and_play
    click_link 'Attack'
    click_link 'Continue'
    expect(page).to have_content 'Sam\'s turn'
    expect(page).to have_content 'Aadam: 100HP'
    expect(page).to have_content 'Sam: 90HP'
    click_link 'Attack'
    click_link 'Continue'
    expect(page).to have_content 'Aadam\'s turn'
    expect(page).to have_content 'Aadam: 90HP'
    expect(page).to have_content 'Sam: 90HP'
  end
end