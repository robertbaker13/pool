class EmployeePositionsController < ApplicationController
  def index
    @employee = Employee.find(params[:employee_id])
    @employee_positions = EmployeePosition.where(employee: @employee)
    render json: @employee_positions
  end

  def show
    @employee_position = EmployeePosition.find(params[:id])
    render json: @employee_position
  end

  def new
    @employee_position = EmployeePosition.new
    render json: @employee_position
  end

  def create
    @employee = Employee.find(params[:employee_id])
    @employee_position = EmployeePosition.new(employee_position_params)

    if @employee_position.save
      render 'show'
    else
      render 'new'
    end
  end

  def edit
    @employee_position = EmployeePosition.find(params[:id])
    render json: @employee_position
  end

  def update
    @employee_position = EmployeePosition.find(params[:id])

    if @employee_position.update(employee_position_params)
      render 'show'
    else
      render 'edit'
    end
  end

  def destroy
    @employee_position = EmployeePosition.find(params[:id])

    @employee_position.destroy
    render 'index'
  end


  private

  def employee_position_params
    params.require(:employee_position).permit(:position, :archived)
  end
end

