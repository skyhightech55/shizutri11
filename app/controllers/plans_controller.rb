class PlansController < ApplicationController
  def index
  end

  def show
    @plan = Plan.find(params[:id])
  end

  def new
    @plan = Plan.new
  end

  def create
    @plan = Plan.new(plan_params)
    @plan.user_id = current_user.id
    @plan.save
    redirect_to plan_path(@plan)
  end

  def edit
  end

  private
  def plan_params
    params.require(:plan).permit(:title, :body, :image)
  end
end
