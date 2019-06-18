class PenguinsController < ApplicationController

  def show
    @penguin = Penguin.find(params[:id])
  end

end
