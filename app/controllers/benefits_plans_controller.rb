class BenefitsPlansController < ApplicationController
  before_action :set_benefits_plan, only: [:show, :update, :destroy]

  # GET /benefits_plans
  def index
    @benefits_plans = BenefitsPlan.all

    render json: @benefits_plans
  end

  # GET /benefits_plans/1
  def show
    render json: @benefits_plan
  end

  # POST /benefits_plans
  def create
    @benefits_plan = BenefitsPlan.new(benefits_plan_params)

    if @benefits_plan.save
      render json: @benefits_plan, status: :created, location: @benefits_plan
    else
      render json: @benefits_plan.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /benefits_plans/1
  def update
    if @benefits_plan.update(benefits_plan_params)
      render json: @benefits_plan
    else
      render json: @benefits_plan.errors, status: :unprocessable_entity
    end
  end

  # DELETE /benefits_plans/1
  def destroy
    @benefits_plan.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_benefits_plan
      @benefits_plan = BenefitsPlan.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def benefits_plan_params
      params.require(:benefits_plan).permit(:benefit_id, :plan_id, :pangkat_id, :jumlah)
    end
end
