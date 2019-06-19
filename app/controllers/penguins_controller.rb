class PenguinsController < ApplicationController

  def show
    @penguin = Penguin.find(params[:id])
  end

  def edit
    @penguin = Penguin.find(params[:id])
  end

  def update
    @penguin = Penguin.find(params[:id])
    @penguin.update(strong_params)
    redirect_to penguin_path(@penguin)
  end

  def destroy
    @penguin = Penguin.find(params[:id])
    # @penguin.destroy
    redirect_to '/records'
  end

  private

  def strong_params
    params.require(:penguin).permit(:name, :title, :temp, :alive, :species)
  end

end
