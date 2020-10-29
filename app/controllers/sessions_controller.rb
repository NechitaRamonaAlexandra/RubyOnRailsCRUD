class SessionsController < ApplicationController
  # user shouldn't have to be logged in before logging in!
  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to root, notice: 'Signed in'
  end
end