require 'rails_helper'

feature 'Visit Task Index' do
  scenario 'User visits the task index page' do
    visit '/tasks'

    expect(page).to have_content('Tasks')
  end
end
