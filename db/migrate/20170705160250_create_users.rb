class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.integer :role

      t.timestamps null: false
    end
    add_index :users, :id, unique: true
  end
end
