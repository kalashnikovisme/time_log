require 'rails_helper'

feature 'Visit Task Index' do
  scenario 'User visits the task index page' do
    visit tasks_path

    expect(page).to have_content('Tasks')
  end

  scenario 'User receives the first task' do
    create :task

    visit tasks_path
    
    expect(page).to have_content Task.first.title
  end
end
