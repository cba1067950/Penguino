class ColoniesController < ApplicationController

  def show
    @colony = Colony.find(params[:id])
    @penguins = @colony.penguins
  end

end
