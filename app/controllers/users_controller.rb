class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:id])
    if @user.save
      redirect_to users_path, notice: 'A new user has been created'
    else
      render action: 'new'
    end
  end

private

  def current_user
    @user ||= User.find_by_id(session[:user_id]) if session[:user_id]
  end

end
