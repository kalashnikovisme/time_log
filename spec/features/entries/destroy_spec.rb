require 'rails_helper'

feature 'Destroy entry' do
  let(:task) { create :task }
  let!(:entry) { create :entry }

  scenario 'User visits certain entry page' do
    expect do
      visit entry_path(entry)

      click_on 'Destroy this entry'
    end.to change(Entry, :count).by -1
  end
end
