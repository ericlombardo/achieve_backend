class Goal < ApplicationRecord
  has_many :activities
  has_many :milestones

  def newMilestones=(milestones)    # newMilestone setter to create milestones with goals
    milestones.each do |ms|
      if !ms.empty?
        self.milestones.build(content: ms)
      end
    end
  end
  
  def milestones=(milestones)   # setter for updating milestones with goal
    milestones.each do |m|
      if !!m[:content]
        foundMilestone = Milestone.find_or_create_by(content: m[:content], goal_id: self.id)
        foundMilestone.update(complete: m[:complete])
      end
    end
  end 
end
