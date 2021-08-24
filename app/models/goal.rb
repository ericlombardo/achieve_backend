class Goal < ApplicationRecord
  has_many :activities
  has_many :milestones

end
