class UserList < ActiveRecord::Base
  attr_accessible :list_id, :user_id
  belongs_to :list
  belongs_to :user
  delegate :name, to: :list
  delegate :items, to: :list

  def display_item_statuses
  	"#{list.items.count} items"# (#{list.items.unassigned.count} unassigned, #{list.items.completed.count} completed)"
  end
end
