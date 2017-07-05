class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.integer :list_id

      t.timestamps null: false
    end
    add_index :items, :list_id
  end
end
