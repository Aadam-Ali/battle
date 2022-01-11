require_relative '../spec_helper'

feature 'Users enter their name and see it on screen' do
  scenario 'both users enter their name and see it on the screen' do
    sign_in_and_play
    expect(page).to have_content 'Aadam vs Sam'
  end
end