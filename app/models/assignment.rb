class Assignment < ActiveRecord::Base
  belongs_to :group
  belongs_to :giver, class_name: 'User' # Good use of advanced AR associations
  belongs_to :receiver, class_name: 'User'

  validates :group_id, :giver_id, :receiver_id, presence: true # Good use of validations on your AR models
end
