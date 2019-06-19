class ColoniesController < ApplicationController

  def show
    @colony = Colony.find(params[:id])
    @penguins = @colony.penguins
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
    # @penguin.destroy
    redirect_to '/login'
  end

  private

  def strong_params
    params.require(:colony).permit(:name)
  end

end
