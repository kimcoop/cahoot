class List < ActiveRecord::Base
  attr_accessible :description, :name, :owner_id, :user_id
  validates :name, presence: true
  belongs_to :user
  belongs_to :owner
  has_many :items

  def has_items?
    items.count > 0
  end

  def assigned_items_count
  	items.assigned.count
  end

  def unassigned_items_count
  	items.unassigned.count
  end

  def completed_items_count
  	items.completed.count
  end

end
