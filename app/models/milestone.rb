class Milestone < ApplicationRecord
  belongs_to :goal, optional: true
end
