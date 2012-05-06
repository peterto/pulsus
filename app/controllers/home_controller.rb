class HomeController < ApplicationController
  def index
    @users = User.all
    @venues = Venue.all

    respond_to do |format|
      format.html
      format.json { render json: @venues, json: @users }
    end
  end
end
