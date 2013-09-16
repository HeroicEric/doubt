class SessionsController < ApplicationController
  def create
    authentication = Authentication.new(env["omniauth.auth"])

    if authentication.authenticated?
      session[:user_id] = authentication.user.id
      redirect_to root_url, notice: "Signed in!"
    else
      redirect_to root_url, alert: "Authentication failed!"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Signed out!"
  end

  def failure
    redirect_to root_url, alert: "Authentication failed!"
  end
end
