class GoalsController < ApplicationController
  before_action :set_goal, only: [:show, :update, :destroy]

  # GET /goals
  def index
    @goals = Goal.all

    render json: @goals, include: [:milestones]
  end

  # GET /goals/1
  def show
    render json: @goal, include: [:milestones]
  end

  # POST /goals

  def create  
    @goal = Goal.new(goal_params)
    
    if @goal.save
      
      render json: @goal, include: [:milestones], status: :created, location: @goal
    else
      render json: @goal.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /goals/1
  def update
    if @goal.update(goal_params)
      render json: @goal, include: [:milestones]
    else
      render json: @goal.errors, status: :unprocessable_entity
    end
  end

  # DELETE /goals/1
  def destroy
    @goal.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_goal
      @goal = Goal.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def goal_params
      params.require(:goal).permit(:title, :dayCount, :durationEnd, :goalVerb, :goalNumber, :goalUnit, :id, :created_at, :updated_at, :why, newMilestones: [], milestones: [:content, :complete, :id, :goal_id, :created_at, :updated_at])
      # milestones: [:content, :complete, :id, :goal_id, :created_at, :updated_at]
    end
end
