class RemoveCompletedFromItems < ActiveRecord::Migration
  def change
    remove_column :items, :completed
    add_column :items, :completed, :boolean, default: 0
  end
end
