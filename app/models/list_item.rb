class ListItem < ActiveRecord::Base
  #before_filter :find_list

  attr_accessible :description, :name, :owner_id, :user_id, :list_id, :state
  validates :name, presence: true
  belongs_to :user
  belongs_to :owner, class_name: 'User', foreign_key: 'owner_id'
  belongs_to :list, foreign_key: 'list_id'

  scope :unassigned, conditions: { state: :unassigned }
  scope :assigned, conditions: { state: :assigned }
  scope :completed, conditions: { state: :completed }

  def self.state_options_for_select
  	options = [["Unassigned", :unassigned], ["Assigned", :assigned], ["Completed", :completed]]
  end

  protected

  def find_list
    @list = List.find params[:list_id]
  end
end
