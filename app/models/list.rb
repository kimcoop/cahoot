class List < ActiveRecord::Base
  attr_accessible :description,
   :name,
   :list_items_tokens,
   :list_items_attributes
  validates :name, presence: true
  has_many :list_items
  has_many :items, through: :list_items
  has_many :user_lists
  has_many :users, through: :user_lists
  attr_reader :list_items_tokens
  delegate :user, to: :user_lists, method: :creator

  accepts_nested_attributes_for :list_items, reject_if: lambda { |a| a[:value].blank? }, allow_destroy: true

  def list_items_tokens
    list_items.map { |list_item| { id: list_item.item_id, name: list_item.name } }
  end

  def list_items_tokens= ids
    self.items= Item.find ids.split(',')
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
