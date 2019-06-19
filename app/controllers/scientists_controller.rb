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

  def edit
    @scientist = Scientist.find(params[:id])
  end

  def update
    @scientist = Scientist.find(params[:id])
    @scientist.update(strong_params)
    redirect_to scientist_path(@scientist)
  end

  def destroy
    @scientist = Scientist.find(params[:id])
    # @scientist.destroy
    redirect_to login
  end

  private

  def strong_params
    params.require(:scientist).permit(:name, :age, :bio)
  end

  def record_params
    params.require(:record).permit(:scientist_id, :colony_id, :location, :project_name)
  end

end
