class RecordsController < ApplicationController

  def show
    @record = Record.find(params[:id])
    @colony = @record.colony
    @penguins = @colony.penguins
  end

  def new
    @scientist = Scientist.find(params[:id])
    @record = Record.new
    @colonies = Colony.all
  end

end
