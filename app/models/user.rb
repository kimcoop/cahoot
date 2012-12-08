class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :lockable, :timeoutable and :activatable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation, :first, :last
  has_many :user_lists
  has_many :lists, through: :user_lists

  def full_name
    "#{first} #{last}"
  end

end
