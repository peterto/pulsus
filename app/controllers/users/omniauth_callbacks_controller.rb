class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def passthru
    render :file => "#{Rails.root}/public/404.html", :status => 404, :layout => false
  end

  def facebook
    @user = User.find_for_facebook_oauth(request.env["omniauth.auth"], current_user)
    if @user.persisted?
      flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => "Facebook"
      sign_in_and_redirect @user, :event => :authentication
    else
      session["devise.facebook_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end

  def foursquare
    @user = User.find_for_foursquare_oauth(request.env["omniauth.auth"], current_user)
    if @user.persisted?
      flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => "foursquare"
      sign_in_and_redirect @user, :event => :authentication
    else
      session["devise.foursquare_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end


end