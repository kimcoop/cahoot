class ChangeStatusToStringForListItems < ActiveRecord::Migration
  def up
  	remove_column :list_items, :status
  	add_column :list_items, :status, :string
  end

  def down
  	add_column :list_items, :status, :integer
  	remove_column :list_items, :status
  end
end
