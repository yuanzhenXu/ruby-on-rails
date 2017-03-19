class UsersController < ApplicationController

  def new
    # @user = User.new
    # @user.save
    render 'signup'
    # redirect_to users_path
    # render 'welcome/index'
  end

  def index
    render 'login'
  end

  def create
    @user = User.new (user_param)
    if @user.save
      render 'welcome/index'
    end

  end

  private
  def user_param
    params.require(:user).permit(:name,:password)
  end
end
