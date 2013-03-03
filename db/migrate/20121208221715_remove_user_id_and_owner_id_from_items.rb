class RemoveUserIdAndOwnerIdFromItems < ActiveRecord::Migration
  def up
  	remove_column :items, :user_id
  	remove_column :items, :owner_id
  end

  def down
  	add_column :items, :user_id, :integer
  	add_column :items, :owner_id, :integer
  end
end
