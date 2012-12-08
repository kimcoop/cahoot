class ListItem < ActiveRecord::Base
  attr_accessible :assignee_id, :creator_id, :item_id, :list_id, :status
  belongs_to :item
  belongs_to :list
  has_one :assignee
  has_one :creator

  def self.status_options_for_select
  	options = [["Unassigned", :unassigned], ["Assigned", :assigned], ["Completed", :completed]]
  end

end
