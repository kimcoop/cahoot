class Item < ActiveRecord::Base
  attr_accessible :description, :name
  validates :name, presence: true
  has_many :list_items
  has_many :lists, through: :list_items

  scope :unassigned, conditions: { state: :unassigned }
  scope :assigned, conditions: { state: :assigned }
  scope :completed, conditions: { state: :completed }

end
