class UserBenefitsController < ApplicationController
  before_action :set_user_benefit, only: [:show, :update, :destroy]

  # GET /user_benefits
  def index
    @user_benefits = UserBenefit.all

    render json: @user_benefits
  end

  # GET /user_benefits/1
  def show
    render json: @user_benefit
  end

  # POST /user_benefits
  def create
    @user_benefit = UserBenefit.new(user_benefit_params)

    if @user_benefit.save
      render json: @user_benefit, status: :created, location: @user_benefit
    else
      render json: @user_benefit.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_benefits/1
  def update
    if @user_benefit.update(user_benefit_params)
      render json: @user_benefit
    else
      render json: @user_benefit.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_benefits/1
  def destroy
    @user_benefit.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_benefit
      @user_benefit = UserBenefit.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_benefit_params
      params.require(:user_benefit).permit(:user_id, :benefit_id)
    end
end
