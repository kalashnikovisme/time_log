require 'rails_helper'

feature 'Update task' do
  let(:task) { create :task }
  let(:attributes) { attributes_for :task }

  scenario 'User creates new task' do
    visit task_path(task)

    click_on 'Edit this task'

    fill_in 'Title', with: attributes[:title]
    fill_in 'Description', with: attributes[:description]

    click_on 'Update Task'

    expect(current_path).to eq task_path(task)
    expect(page).to have_content attributes[:title]
    expect(task.title).to eq attributes[:title]
  end
end
