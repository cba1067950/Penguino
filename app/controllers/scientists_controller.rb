class ScientistsController < ApplicationController
  skip_before_action :find_scientist, only: [:new, :create]

  def new
    @scientist = Scientist.new
  end

  def create
    @scientist = Scientist.create(scientist_strong_params)
    if @scientist.valid?
      session[:scientist_id] = @scientist.id
      redirect_to @scientist
    else
      flash[:errors] = @scientist.errors.full_messages
      redirect_to new_scientist_path
    end
  end

  def show
    @scientist = Scientist.find(params[:id])
  end

  def records
    # @scientist = Scientist.find(params[:id])
    # @records = @scientist.records
  end

  def edit
  end

  def update
    @current_scientist.update(edit_params)
    redirect_to @current_scientist
  end

  def destroy
    # @scientist = Scientist.find(params[:id])
    @current_scientist.destroy
    logout
    redirect_to welcome_path
  end

  private

  def edit_params
    params.require(:scientist).permit(:name, :age, :bio)
  end

  def record_params
    params.require(:record).permit(:scientist_id, :colony_id, :location, :project_name)
  end

  def scientist_strong_params
    params.require(:scientist).permit(:name, :age, :bio, :username, :password)
  end

end
