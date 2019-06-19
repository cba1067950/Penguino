class RecordsController < ApplicationController

  def show
    @record = Record.find(params[:id])
  end

  def edit
    @record = Record.find(params[:id])
  end

  def update
    @record = Record.find(params[:id])
    @record.update(strong_params)
    redirect_to record_path(@record)
  end

  def destroy
    @scientist = Scientist.find(params[:id])
    # @scientist.destroy
    redirect_to login
  end

  private

  def strong_params
    params.require(:record).permit(:project_name, :location)
  end

end
