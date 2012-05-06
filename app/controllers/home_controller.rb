class HomeController < ApplicationController
  def index
    @users = User.all
    @venues = Venue.all
    response = { :user => @users, :venue => @venues }

    respond_to do |format|
      format.html
      # format.json { render :json => { @users }}
      # format.json  { render :json => response }
      format.json { render :json => { :user => @users,
                                       :venue => @venues } }
      
      # format.json { render :json => @venues }
      format.text { render :text => response }

    end
  end
end
