require 'rails_helper'

feature 'Update entry' do
  let(:entry) { create :entry }
  let(:attributes) { attributes_for :entry }

  scenario 'User creates new entry' do
    visit entry_path(entry)

    click_on 'Edit this entry'

    fill_in 'Comment', with: attributes[:comment]
    fill_in 'Time', with: attributes[:time]

    click_on 'Update Entry'

    expect(current_path).to eq entry_path(entry)
    expect(page).to have_content attributes[:comment]
  end
end
