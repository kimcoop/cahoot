class CreateListItems < ActiveRecord::Migration
  def change
    create_table :list_items do |t|
      t.string :name
      t.text :description
      t.integer :user_id
      t.integer :owner_id

      t.timestamps
    end
  end
end
