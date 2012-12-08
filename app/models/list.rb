class List < ActiveRecord::Base
  attr_accessible :description, :name, :item_tokens, :creator_id
  validates :name, presence: true
  belongs_to :creator
  has_many :list_items
  has_many :items, through: :list_items
  has_many :user_lists
  has_many :users, through: :user_lists
  attr_reader :item_tokens

  def item_tokens=(ids)
    self.item_ids = ids.split(",")
  end

  def has_items?
    items.count > 0
  end

  def assigned_items_count
    #TODO:  user counter cache (for this and next two methods)
  	items.assigned.count
  end

  def unassigned_items_count
  	items.unassigned.count
  end

  def completed_items_count
  	items.completed.count
  end

end
