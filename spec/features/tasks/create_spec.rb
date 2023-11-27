require 'rails_helper'

feature 'Create task' do
  let(:attributes) { attributes_for :task }

  scenario 'User creates new task' do
    expect do
      visit new_task_path

      fill_in 'Title', with: attributes[:title]
      fill_in 'Description', with: attributes[:description]

      click_on 'Create Task'
    end.to change(Task, :count).by 1

    task = Task.last

    expect(current_path).to eq task_path(task)
    expect(page).to have_content task.title
  end
end
