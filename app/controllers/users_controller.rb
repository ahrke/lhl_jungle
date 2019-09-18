class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.first_name = params["user"][:first_name]
    @user.last_name = params["user"][:first_name]
    @user.password = params["user"][:first_name]
    @user.email = params["user"][:first_name]
  end

  def log_in
  end

  private
  def user_params
    params.require(:user).permit(
      :first_name,
      :last_name,
      :password,
      :email
    )
  end
end
