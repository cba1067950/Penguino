class ColoniesController < ApplicationController

  def index
    @colonies = @current_scientist.colonies
  end

  def show
    @colony = Colony.find(params[:id])
    @penguins = @colony.penguins
  end

  def new
    @colony = Colony.new
  end

  def create
    @colony = Colony.create(strong_params)
    if @colony.valid?
      redirect_to @colony
    else
      flash[:errors] = @colony.errors.full_messages
      redirect_to new_colony_path
    end
  end

  def edit
    @colony = Colony.find(params[:id])
  end

  def update
    @colony = Colony.find(params[:id])
    @colony.update(strong_params)
    redirect_to colony_path(@colony)
  end

  def destroy
    @colony = Colony.find(params[:id])
    @colony.destroy
    redirect_to @current_scientist
  end

  private

  def strong_params
    params.require(:colony).permit(:name, :active)
  end

end
