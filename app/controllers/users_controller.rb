class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    @users = User.all
    respond_to do |format|
      format.html
      format.json { render :json => @users }
      format.text { render :text => @users }
    end
  end

  def show
    begin
      @user = User.find(params[:id])
      respond_to do |format|
        format.html
        format.json { render :json => @user }
        format.text { render :text => @user }
      end
    rescue Mongoid::Errors::DocumentNotFound, BSON::InvalidObjectId
      render file: "public/404.html", status: 404
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:id])
    if @user.save
      redirect_to root_path, notice: 'A new user has been created'
    else
      render action: 'new'
    end
  end

private

  def current_user
    @user ||= User.find_by_id(session[:user_id]) if session[:user_id]
  end

end
