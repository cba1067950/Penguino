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
    if penguin.valid?
      penguin.update(image_url: penguin.assign_image)
      redirect_to penguin
    else
      flash[:errors] = penguin.errors.full_messages
      redirect_to new_penguin_path
    end
  end


  def edit
    @penguin = Penguin.find(params[:id])
    @colonies = Colony.all
  end

  def update
    @penguin = Penguin.find(params[:id])
    @penguin.update(edit_strong_params)
    redirect_to penguin_path(@penguin)
  end

  def destroy
    @penguin = Penguin.find(params[:id])
    colony = @penguin.colony
    @penguin.destroy
    redirect_to colony_path(colony)
  end

  private

  def edit_strong_params
    params.require(:penguin).permit(:name, :title, :temp, :alive, :species)
  end

  def penguin_params
    params.require(:penguin).permit(:name, :title, :temp, :alive, :species, :colony_id)
  end

end
