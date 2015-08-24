class SchedulesController < ApplicationController
  def index
    @schedules = Schedule.all #limit to current organization
    render json: @schedules
  end

  def show
    @schedule = Schedule.find(params[:id])
    render json: @schedule
  end

  def new
    @schedule = Schedule.new
    render json: @schedule
  end

  def create
    @schedule = Schedule.new(schedule_params)

    if @schedule.save
      render 'show'
    else
      render 'new'
    end
  end

  def edit
    @schedule = Schedule.find(params[:id])
    render json: @schedule
  end

  def update
    @schedule = Schedule.find(params[:id])

    if @schedule.update(schedule_params)
      render 'show'
    else
      render 'edit'
    end
  end

  def destroy
    @schedule = Schedule.find(params[:id])

    @schedule.destroy
    render 'index'
  end


  private

  def schedule_params
    params.require(:schedule).permit(:note, :date)
  end
end
