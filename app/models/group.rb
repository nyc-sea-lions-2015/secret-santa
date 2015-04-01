class Group < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_many :assignments
  belongs_to :creator, class_name: 'User'

  validates :name, :creator_id, :spending_limit, presence: true

  def draw_names(name_list)

  end
end
