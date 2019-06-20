class RecordsController < ApplicationController
  def index
    @records = @current_scientist.records
  end

  def show
    @record = Record.find(params[:id])
    @colony = @record.colony
    @penguins = @colony.penguins
  end

  def new
    @record = Record.new
    @colonies = Colony.all
  end

  def create
    @record = @current_scientist.records.create(record_strong_params)
    if @record.valid?
      redirect_to @record
    else
      flash[:errors] = @record.errors.full_messages
      redirect_to new_record_path
    end
  end

  def edit
    @record = Record.find(params[:id])
  end

  def update
    @record = Record.find(params[:id])
    @record.update(update_record_params)
    redirect_to record_path(@record)
  end

  def destroy
    @record = Record.find(params[:id])
    # @scientist = @record.scientist
    @record.destroy
    redirect_to records_path
  end

  private

  def update_record_params
    params.require(:record).permit(:project_name, :location)
  end

  def record_strong_params
    params.require(:record).permit(:project_name, :location, :colony_id)
  end
end
