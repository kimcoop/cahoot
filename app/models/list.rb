class List < ActiveRecord::Base
  attr_accessible :description, :name, :owner_id, :user_id
  validates :name, presence: true

end
