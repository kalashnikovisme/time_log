class CreateEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :entries do |t|
      t.string :time
      t.text :comment
      t.references :task, null: false, foreign_key: true

      t.timestamps
    end
  end
end
