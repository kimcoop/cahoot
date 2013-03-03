class RemoveStateFromItems < ActiveRecord::Migration
  def up
  	remove_column :items, :state
  end

  def down
  	add_column :items, :state, :integer
  end
end
