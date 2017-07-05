class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :name
      t.integer :user_id
      t.boolean :private

      t.timestamps null: false
    end
    add_index :lists, :id, unique: true
    add_index :lists, :user_id
  end
end
