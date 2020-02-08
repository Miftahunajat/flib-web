class UserRewardsController < ApplicationController
  before_action :set_user_reward, only: [:show, :update, :destroy]

  # GET /user_rewards
  def index
    @user_rewards = UserReward.all

    render json: @user_rewards
  end

  # GET /user_rewards/1
  def show
    render json: @user_reward
  end

  # POST /user_rewards
  def create
    hash_params = {}
    hash_params[:user_id] = params[:user_id]
    hash_params[:reward_id] = params[:reward_id]
    @user_reward = UserReward.new(hash_params)
    reward = Reward.find(params[:reward_id])
    user = User.find(params[:user_id])
    user.decrement(:jumlah_kredit, reward.jumlah_kredit)
    user.save


    if @user_reward.save
      render json: @user_reward
    else
      render json: @user_reward.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_rewards/1
  def update
    if @user_reward.update(user_reward_params)
      render json: @user_reward
    else
      render json: @user_reward.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_rewards/1
  def destroy
    @user_reward.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_reward
      @user_reward = UserReward.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_reward_params
      params.require(:user_reward).permit(:user_id, :reward_id)
    end
end
