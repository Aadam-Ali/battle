require_relative '../spec_helper'

feature 'displays whose turn it is' do
  scenario 'displays player one\'s turn to begin with' do
    sign_in_and_play
    expect(page).to have_content 'Aadam\'s turn'
  end
  scenario 'displays player two\'s turn after player one attacks' do
    sign_in_and_play
    click_link 'Attack'
    click_link 'Continue'
    expect(page).to have_content 'Sam\'s turn'
  end
end