class ApplicationController < ActionController::API

  def build_milestones(milestones)
    milestones.each do |ms|
      if !ms.empty?
        @goal.milestones.create(content: ms)
      end
    end
  end
end
