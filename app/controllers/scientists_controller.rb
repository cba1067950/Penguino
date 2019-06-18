class ScientistsController < ApplicationController

  def show
    @scientist = Scientist.find(params[:id])
    @records = @scientist.records
  end

end
