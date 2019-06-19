class PenguinsController < ApplicationController

  def show
    @penguin = Penguin.find(params[:id])
  end

  def new
    @penguin = Penguin.new
    @colonies = Colony.all
  end

  def create
    penguin = Penguin.create(penguin_params)
    redirect_to penguin
  end

  private
  def penguin_params
    params.require(:penguin).permit(:name, :title, :temp, :alive, :species, :colony_id)
  end

end
