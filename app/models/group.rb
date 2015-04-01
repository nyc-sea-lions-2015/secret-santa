class Group < ActiveRecord::Base
  has_many :users
  has_many :assignments
  belongs_to :creator, class_name: 'User'

  validates :name, :creator_id, presence: true
end
