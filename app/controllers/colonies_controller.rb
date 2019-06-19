class ColoniesController < ApplicationController

  def show
    @colony = Colony.find(params[:id])
    @penguins = @colony.penguins
  end

  def new
    @colony = Colony.new
  end

  def create
    colony = Colony.create(colony_params)
    #check validations and add flasherrors#
    redirect_to colony
  end

  private
  def colony_params
    params.require(:colony).permit(:name, :active)
  end

end
