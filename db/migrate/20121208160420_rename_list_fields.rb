class RenameListFields < ActiveRecord::Migration
  def up
  	rename_column :lists, :user_id, :ceator_id
  end

  def down
  	rename_column :lists, :creator_id, :user_id
  end
end
