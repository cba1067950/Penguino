class ApplicationController < ActionController::Base
  before_action :find_scientist, except: [:welcome]

  def welcome
  end

  def find_scientist
    @scientist_id = session[:scientist_id]
    @logged_in = !!@scientist_id
    if @logged_in
      @current_scientist = Scientist.find(@scientist_id)
      @records = @current_scientist.records
    else
      flash[:messages] = "You need to be logged in!"
      redirect_to root_path
    end
  end

  def logout
    session[:scientist_id] = nil
  end

end
