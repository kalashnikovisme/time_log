require 'rails_helper'

feature 'Visit Task Index' do
  scenario 'User visits the task index page' do
    visit tasks_path

    expect(page).to have_content('Tasks')
  end

  context 'with tasks collection' do
    before do
      create_list :task, 5
    end

    scenario 'User receives the first task' do
      visit tasks_path

      expect(page).to have_content Task.first.title
    end
  end
end
