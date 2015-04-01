class User < ActiveRecord::Base
  has_secure_password
  has_many :groups
  has_many :likes
  has_many :assignments
  has_many :users, through :assignments

  validates :email, :first_name, :password_digest, presence: true
  validates :email, uniqueness: true
end
