class UsersController < ApplicationController
  def register
    @user = User.new
    render plain: 'ok'
  end
  def index
    render plain: 'ok'
  end
end
