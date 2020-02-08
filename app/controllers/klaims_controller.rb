class KlaimsController < ApplicationController
  before_action :set_klaim, only: [:show, :update, :destroy]

  # GET /klaims
  def index
    @klaims = Klaim.all

    render json: @klaims
  end

  # GET /klaims/1
  def show
    render json: @klaim
  end

  # POST /klaims
  def create
    @klaim = Klaim.new()
    @klaim.user_id = params[:user_id]
    @klaim.benefit_id = params[:benefit_id]
    @klaim.status_id = params[:status_id]
    @klaim.tanggal = params[:tanggal]
    @klaim.jumlah = params[:jumlah]
    @klaim.photo = params[:file]
    @klaim.tempat = params[:tempat]

    if @klaim.save
      render json: @klaim, status: :created, location: @klaim
    else
      render json: @klaim.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /klaims/1
  def update
    if @klaim.update(klaim_params)
      render json: @klaim
    else
      render json: @klaim.errors, status: :unprocessable_entity
    end
  end

  # DELETE /klaims/1
  def destroy
    @klaim.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_klaim
      @klaim = Klaim.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def klaim_params
      params.require(:klaim).permit(:user_id, :benefit_id, :status_id, :tangga, :jumlah, :foto, :tempat, :verified)
    end
end
