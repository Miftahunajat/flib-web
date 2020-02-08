class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  # GET /users
  def index
    @users = User.all

    render json: {items: @users}
  end

  # GET /users/1
  def show
    render json: @user, include: :pangkat
  end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    hash_params = {}
    hash_params[:status] = params[:status]
    hash_params[:usia] = params[:usia]
    hash_params[:jumlah_dependant] = params[:jumlah_dependant]
    if @user.update(hash_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  def login
    username = params['username']
    password = params['password']
    user = User.find_by_nama_password(username, password)
    if user.nil?
      render json: {}, status: :not_found
    else
      render json: user
    end
    # render :json => @programs, :include => {:insurer => {:only => :name}}, :except => [:created_at, :updated_at]
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:nama, :status, :usia, :pangkat, :tanggal_masuk, :jumlah_dependant, :jumlah_kredit)
    end
end
