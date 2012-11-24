class ListItem < ActiveRecord::Base
  attr_accessible :description, :name, :owner_id, :user_id
  belongs_to :user
  belongs_to :owner
end
