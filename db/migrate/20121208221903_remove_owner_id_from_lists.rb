class RemoveOwnerIdFromLists < ActiveRecord::Migration
  def up
  	remove_column :lists, :owner_id
  end

  def down
  	add_column :lists, :owner_id, :integer
  end
end
