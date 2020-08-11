class CreateTodos < ActiveRecord::Migration[6.0]
  def change
    create_table :todos do |t|
      t.string :name, null: false
      t.text :comment
      t.integer :quote
      t.integer :user_id
      t.timestamps
    end
  end
end
