require_relative '../spec_helper'

feature 'serve web app' do
  scenario 'should serve home page' do
    visit('/')
    expect(page).to have_content 'Testing infrastructure working!'
  end
end