class RenameCreatorIdListField < ActiveRecord::Migration
  def up
  	rename_column :lists, :ceator_id, :creator_id
  end

  def down
  	rename_column :lists, :creator_id, :ceator_id
  end
end
