class ScheduleTypePositionsController < ApplicationController
  def index
    @schedule_type_positions = ScheduleTypePosition.all #limit to current organization
    render json: @schedule_type_positions
  end

  def show
    @schedule_type_position = ScheduleTypePosition.find(params[:id])
    render json: @schedule_type_position
  end

  def new
    @schedule_type_position = ScheduleTypePosition.new
    render json: @schedule_type_position
  end

  def create
    @schedule_type_position = ScheduleTypePosition.new(schedule_type_position_params)

    if @schedule_type_position.save
      render 'show'
    else
      render 'new'
    end
  end

  def edit
    @schedule_type_position = ScheduleTypePosition.find(params[:id])
    render json: @schedule_type_position
  end

  def update
    @schedule_type_position = ScheduleTypePosition.find(params[:id])

    if @schedule_type_position.update(schedule_type_position_params)
      render 'show'
    else
      render 'edit'
    end
  end

  def destroy
    @schedule_type_position = ScheduleTypePosition.find(params[:id])

    @schedule_type_position.destroy
    render 'index'
  end


  private

  def schedule_type_position_params
    params.require(:schedule_type_position).permit(:schedule_type, :points, :position)
  end
end
