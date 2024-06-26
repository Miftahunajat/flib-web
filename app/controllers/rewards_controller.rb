class RewardsController < ApplicationController
  before_action :set_reward, only: [:show, :update, :destroy]

  # GET /rewards
  def index
    @rewards = Reward.all

    render json: {items: @rewards}
  end

  # GET /rewards/1
  def show
    render json: @reward
  end

  # POST /rewards
  def create
    @reward = Reward.new(reward_params)

    if @reward.save
      render json: @reward, status: :created, location: @reward
    else
      render json: @reward.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /rewards/1
  def update
    if @reward.update(reward_params)
      render json: @reward
    else
      render json: @reward.errors, status: :unprocessable_entity
    end
  end

  # DELETE /rewards/1
  def destroy
    @reward.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reward
      @reward = Reward.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def reward_params
      params.require(:reward).permit(:nama, :startdate, :enddate, :jumlah_kredit, :photo)
    end
end
