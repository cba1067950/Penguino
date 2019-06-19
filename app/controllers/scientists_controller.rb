class ScientistsController < ApplicationController

  def show
    @scientist = Scientist.find(params[:id])
  end

  def records
    @scientist = Scientist.find(params[:id])
    @records = @scientist.records
  end

  def create_record
    scientist = Scientist.find(params[:id])
    record = scientist.records.build(record_params)
    record.save
    redirect_to scientist_records_path

  end

  private
  def record_params
    params.require(:record).permit(:scientist_id, :colony_id, :location, :project_name)
  end

end
