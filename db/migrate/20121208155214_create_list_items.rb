class CreateListItems < ActiveRecord::Migration
  def change
    create_table :list_items do |t|
      t.integer :list_id
      t.integer :item_id
      t.integer :assignee_id
      t.integer :creator_id
      t.integer :status

      t.timestamps
    end
  end
end
