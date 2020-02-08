class BenefitCategoriesController < ApplicationController
  before_action :set_benefit_category, only: [:show, :update, :destroy]

  # GET /benefit_categories
  def index
    @benefit_categories = BenefitCategory.all

    render json: @benefit_categories
  end

  # GET /benefit_categories/1
  def show
    render json: @benefit_category
  end

  # POST /benefit_categories
  def create
    @benefit_category = BenefitCategory.new(benefit_category_params)

    if @benefit_category.save
      render json: @benefit_category, status: :created, location: @benefit_category
    else
      render json: @benefit_category.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /benefit_categories/1
  def update
    if @benefit_category.update(benefit_category_params)
      render json: @benefit_category
    else
      render json: @benefit_category.errors, status: :unprocessable_entity
    end
  end

  # DELETE /benefit_categories/1
  def destroy
    @benefit_category.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_benefit_category
      @benefit_category = BenefitCategory.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def benefit_category_params
      params.require(:benefit_category).permit(:nama, :code)
    end
end
