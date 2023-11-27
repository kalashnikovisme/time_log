require 'rails_helper'

feature 'Create entry' do
  let(:task) { create :task }
  let(:attributes) { attributes_for :entry }

  scenario 'User creates new entry' do
    expect do
      visit task_path task

      click_on 'Entries'

      click_on 'New entry'

      fill_in 'Time', with: attributes[:time]
      fill_in 'Comment', with: attributes[:comment]

      click_on 'Create Entry'
    end.to change(task.entries, :count).by 1

    entry = task.entries.last

    expect(current_path).to eq entry_path(entry)
    expect(page).to have_content entry.comment
  end
end
