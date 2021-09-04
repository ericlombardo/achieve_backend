class Goal < ApplicationRecord
  has_many :activities
  has_many :milestones

  def milestones=(milestones)
    milestones.each do |m|
      foundMilestone = Milestone.find_or_create_by(content: m[:content], goal_id: self.id)
      foundMilestone.update(complete: m[:complete])
    end
  end 

  # def activities=(activities)
  #   activities.each do |a|
  #     foundActivity = Activity.find(a[:id])
  #     foundActivity.update(title: a[:title], date: a[:date], notes: a[:notes], duration: a[:duration])
  #   end
  # end 

end
