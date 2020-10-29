class UserController < ApplicationController

  def index
    @user = User.find(params[:id])
    @reviews = @user.reviews
  end
  
end