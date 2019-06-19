class ColoniesController < ApplicationController

  def show
    @colony = Colony.find(params[:id])
    @penguins = @colony.penguins
  end

  def new
    @colony = Colony.new
  end

  def create
    colony = Colony.create(strong_params)
    #check validations and add flasherrors#
    redirect_to colony
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
