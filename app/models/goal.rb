class Goal < ApplicationRecord
  has_many :activities
  has_many :milestones

  def newMilestones=(milestones)
    milestones.each do |ms|
      if !ms.empty?
        self.milestones.build(content: ms)
      end
    end
  end
  
  def milestones=(milestones)
    milestones.each do |m|
      if !!m[:content]
        foundMilestone = Milestone.find_or_create_by(content: m[:content], goal_id: self.id)
        foundMilestone.update(complete: m[:complete])
      end
    end
  end 

  # def milestones=(milestones)
  #   milestones.each do |m|
  #     if !m.empty?
  #       Milestone.create(content: m, goal_id: self.id)
  #     end
  #   end
  # end 

end
