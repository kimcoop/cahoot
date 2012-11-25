class List < ActiveRecord::Base
  attr_accessible :description, :name, :owner_id, :user_id
  validates :name, presence: true
  belongs_to :user
  belongs_to :owner
  has_many :list_items

  def assigned_items_count
  	list_items.assigned.count
  end

  def unassigned_items_count
  	list_items.unassigned.count
  end

  def completed_items_count
  	list_items.completed.count
  end

end
