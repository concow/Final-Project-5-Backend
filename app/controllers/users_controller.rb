class UsersController < ApplicationController
  skip_before_action :confirm_authentication

  # def index
  #   users = User.all
  #   render json: users
  # end

  # def show
  #   if current_user
  #     render json: current_user, status: :ok
  #   else
  #     render json: { user: 'not logged in' }, status: :unauthorized
  #   end
  # end

  def create
    @user = User.create(user_params)
    if @user.valid?
      render json: { user: UserSerializer.new(@user) }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :unprocessable_entity
    end
  end

  def profile
    render json: { user: UserSerializer.new(current_user) }, status: :accepted
  end

  private
  
  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end