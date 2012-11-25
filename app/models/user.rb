class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :lockable, :timeoutable and :activatable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation, :first, :last
  has_many :list_items
  has_many :lists


  def has_lists?
  	lists.count > 0
  end

  def full_name
      "#{first} #{last}"
  end

end
