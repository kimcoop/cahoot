class Item < ActiveRecord::Base
  attr_accessible :description, :name
  has_many :list_items
  has_many :lists, through: :list_items
  
  validates :name, presence: true

  def self.tokens query
    items = where("name ILIKE ?", "%#{query}%")
    if items.empty?
      # If we ever let user to create new items, we can use this:
      # [ { id: "<<<#{query}>>>", name: "New: \"#{query}\"", new_record: true } ]
      []
    else
      items
    end
  end

end
