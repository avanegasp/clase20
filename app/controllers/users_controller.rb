class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to '/users'
    else
      render 'users/new'
    end
    User.create(user_params) (cuando antes se hacía con create)
  end



  private
  def user_params
    params.require(:user).permit(:name)
  end
end
