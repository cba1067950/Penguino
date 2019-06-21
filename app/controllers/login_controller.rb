class LoginController < ApplicationController
  skip_before_action :find_scientist, only: [:new, :create]

  def new
  end

  def create
    @scientist = Scientist.find_by(username: params[:username])
    if @scientist && @scientist.authenticate(params[:password])
      session[:scientist_id] = @scientist.id
      redirect_to @scientist
    else
      flash[:messages] = "No science for you!"
      redirect_to new_login_path
    end
  end

  def destroy
    logout
    redirect_to root_path
  end

end
