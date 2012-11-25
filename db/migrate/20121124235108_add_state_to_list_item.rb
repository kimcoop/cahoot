class AddStateToListItem < ActiveRecord::Migration
  def change
  	add_column :list_items, :state, :string
  end
end
