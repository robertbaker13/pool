class ScheduleEmployeePositionsController < ApplicationController
  def index
    @schedule = Schedule.find(params[:schedule_id])
    @schedule_employee_positions = ScheduleEmployeePosition.where(schedule: @schedule)
    render json: @schedule_employee_positions
  end

  def show
    @schedule_employee_position = ScheduleEmployeePosition.find(params[:id])
    render json: @schedule_employee_position
  end

  def new
    @schedule_employee_position = ScheduleEmployeePosition.new
    render json: @schedule_employee_position
  end

  def create
    @schedule = Schedule.find(params[:schedule_id])
    @schedule_employee_position = ScheduleEmployeePosition.new(schedule_employee_position_params)

    if @schedule_employee_position.save
      render 'show'
    else
      render 'new'
    end
  end

  def edit
    @schedule_employee_position = ScheduleEmployeePosition.find(params[:id])
    render json: @schedule_employee_position
  end

  def update
    @schedule_employee_position = ScheduleEmployeePosition.find(params[:id])

    if @schedule_employee_position.update(schedule_employee_position_params)
      render 'show'
    else
      render 'edit'
    end
  end

  def destroy
    @schedule_employee_position = ScheduleEmployeePosition.find(params[:id])

    @schedule_employee_position.destroy
    render 'index'
  end


  private

  def schedule_employee_position_params
    params.require(:schedule_employee_position).permit(:employee_position)
  end
end
