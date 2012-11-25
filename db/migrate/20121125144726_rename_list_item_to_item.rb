class RenameListItemToItem < ActiveRecord::Migration
  def self.up
    rename_table :list_items, :items
  end

 def self.down
    rename_table :items, :list_items
 end
end