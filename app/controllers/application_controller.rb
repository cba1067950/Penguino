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
      flash[:errors] = "Log in brah"
      redirect_to '/welcome'
    end
  end

  def logout
    session[:scientist_id] = nil
  end

end
