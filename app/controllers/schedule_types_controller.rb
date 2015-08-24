class ScheduleTypesController < ApplicationController
  def index
    @schedule_types = ScheduleType.where(archived: false) #limit to current organization
    render json: @schedule_types
  end

  def show
    @schedule_type = ScheduleType.find(params[:id])
    render json: @schedule_type
  end

  def new
    @schedule_type = ScheduleType.new
    render json: @schedule_type
  end

  def create
    @schedule_type = ScheduleType.new(schedule_type_params)

    if @schedule_type.save
      render 'show'
    else
      render 'new'
    end
  end

  def edit
    @schedule_type = ScheduleType.find(params[:id])
    render json: @schedule_type
  end

  def update
    @schedule_type = ScheduleType.find(params[:id])

    if @schedule_type.update(schedule_type_params)
      render 'show'
    else
      render 'edit'
    end
  end

  def destroy
    @schedule_type = ScheduleType.find(params[:id])

    @schedule_type.destroy
    render 'index'
  end


  private

  def schedule_type_params
    params.require(:schedule_type).permit(:name)
  end
end
