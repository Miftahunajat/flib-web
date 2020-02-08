class UsersPlansController < ApplicationController
  before_action :set_users_plan, only: [:show, :update, :destroy]

  # GET /users_plans
  def index
    @users_plans = UsersPlan.all

    render json: @users_plans
  end

  # GET /users_plans/1
  def show
    render json: @users_plan
  end

  # POST /users_plans
  def create
    hash_params = {}
    hash_params[:user_id] = params[:user_id]
    hash_params[:plan_id] = params[:plan_id]
    @users_plan = UsersPlan.new(hash_params)
    plan = Plan.find(params[:plan_id])
    user = User.find(params[:user_id])
    user.decrement(:jumlah_kredit, plan.credit)
    user.save

    if @users_plan.save
      render json: @users_plan
    else
      render json: @users_plan.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users_plans/1
  def update
    if @users_plan.update(users_plan_params)
      render json: @users_plan
    else
      render json: @users_plan.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users_plans/1
  def destroy
    @users_plan.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_users_plan
      @users_plan = UsersPlan.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def users_plan_params
      params.require(:users_plan).permit(:user_id, :plan_id)
    end
end
