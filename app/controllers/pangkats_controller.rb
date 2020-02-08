class PangkatsController < ApplicationController
  before_action :set_pangkat, only: [:show, :update, :destroy]

  # GET /pangkats
  def index
    @pangkats = Pangkat.all

    render json: @pangkats
  end

  # GET /pangkats/1
  def show
    render json: @pangkat
  end

  # POST /pangkats
  def create
    @pangkat = Pangkat.new(pangkat_params)

    if @pangkat.save
      render json: @pangkat, status: :created, location: @pangkat
    else
      render json: @pangkat.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pangkats/1
  def update
    if @pangkat.update(pangkat_params)
      render json: @pangkat
    else
      render json: @pangkat.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pangkats/1
  def destroy
    @pangkat.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pangkat
      @pangkat = Pangkat.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def pangkat_params
      params.require(:pangkat).permit(:nama, :code)
    end
end
