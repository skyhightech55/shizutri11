class PlansController < ApplicationController
  def index
    @plans = Plan.all
  end

  

  def new
    @plan = Plan.new
    @plans = Plan.all
    @category_parent_array = Category.category_parent_array_create
  end

  def create
    @plan = Plan.new(plan_params)
    @plan.user_id = current_user.id
    if @plan.save
      PlanCategory.maltilevel_category_create(
        @plan,
        params[:parent_id],
        params[:children_id],
        params[:grandchildren_id]
      )
    redirect_to plan_path(@plan)
    end
  end

  def get_category_children
    @category_children = Category.find(params[:parent_id]).children
  end
  
  def get_category_grandchildren
    @category_grandchildren = Category.find(params[:children_id]).children
  end
  

  def show
    @plan = Plan.find(params[:id])
  end
  
  def edit
    @plan = Plan.find(params[:id])
  end

  def update
    @plan = Plan.find(params[:id])
    @plan.update(plan_params)
    redirect_to plan_path(@plan)
  end

  private
  def plan_params
    params.require(:plan).permit(:title, :body, :image, { category_ids: [] })
  end
end
