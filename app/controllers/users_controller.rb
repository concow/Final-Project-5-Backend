class UsersController < ApplicationController
 skip_before_action :authorized, only: [:create]
 
  def profile
    render json: { user: UserSerializer.new(current_user) }, status: :accepted
  end
 
  def index
    users = User.all
    render json: users
  end

  def create
    @user = User.create(user_params)
    #  byebug
    if @user.valid?
      @token = encode_token(user_id: @user.id)
      render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :unprocessable_entity
    end
  end
 
  private
  
  def user_params
    params.require(:user).permit(:username, :password)
  end
end