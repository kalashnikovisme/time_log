class AddStateToTasks < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :aasm_state, :string
  end
end
