class LimitsController < ApplicationController
  before_action :set_limit, only: [:show, :update, :destroy]

  # GET /limits
  def index
    @limits = Limit.all

    render json: @limits
  end

  # GET /limits/1
  def show
    render json: @limit
  end

  # POST /limits
  def create
    @limit = Limit.new(limit_params)

    if @limit.save
      render json: @limit, status: :created, location: @limit
    else
      render json: @limit.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /limits/1
  def update
    if @limit.update(limit_params)
      render json: @limit
    else
      render json: @limit.errors, status: :unprocessable_entity
    end
  end

  # DELETE /limits/1
  def destroy
    @limit.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_limit
      @limit = Limit.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def limit_params
      params.require(:limit).permit(:benefit_id, :pangkat_id)
    end
end
