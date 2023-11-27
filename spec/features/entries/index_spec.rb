require 'rails_helper'

feature 'Visit Entry Index' do
  let(:task) { create :task }

  scenario 'User visits the entry index page' do
    visit task_entries_path(task)

    expect(page).to have_content('Entries')
  end

  context 'with entries collection' do
    before do
      create_list :entry, 5, task:
    end

    scenario 'User receives the first entry' do
      visit task_entries_path(task)

      expect(page).to have_content Entry.first.comment
    end
  end
end
