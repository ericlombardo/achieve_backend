class Activity < ApplicationRecord
  belongs_to :goal, optional: true
end
