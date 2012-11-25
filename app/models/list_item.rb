class ListItem < ActiveRecord::Base
  attr_accessible :description, :name, :owner_id, :user_id, :state
  validates :name, presence: true
  belongs_to :user
  belongs_to :owner, :class_name => 'User', :foreign_key => 'owner_id'

  def self.state_options_for_select
  	options = [["Unassigned", :unassigned], ["Assigned", :assigned], ["Completed", :completed]]
  end

end
