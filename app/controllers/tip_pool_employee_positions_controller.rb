class TipPoolEmployeePositionsController < ApplicationController
  def index
    @tip_pool_employee_positions = TipPoolEmployeePosition.all #limit to current organization
    render json: @tip_pool_employee_positions
  end

  def show
    @tip_pool_employee_position = TipPoolEmployeePosition.find(params[:id])
    render json: @tip_pool_employee_position
  end

  def new
    @tip_pool_employee_position = TipPoolEmployeePosition.new
    render json: @tip_pool_employee_position
  end

  def create
    @tip_pool_employee_position = TipPoolEmployeePosition.new(tip_pool_employee_position_params)

    if @tip_pool_employee_position.save
      render 'show'
    else
      render 'new'
    end
  end

  def edit
    @tip_pool_employee_position = TipPoolEmployeePosition.find(params[:id])
    render json: @tip_pool_employee_position
  end

  def update
    @tip_pool_employee_position = TipPoolEmployeePosition.find(params[:id])

    if @tip_pool_employee_position.update(tip_pool_employee_position_params)
      render 'show'
    else
      render 'edit'
    end
  end

  def destroy
    @tip_pool_employee_position = TipPoolEmployeePosition.find(params[:id])

    @tip_pool_employee_position.destroy
    render 'index'
  end


  private

  def tip_pool_employee_position_params
    params.require(:tip_pool_employee_position).permit(:employee_position, :tip_pool)
  end
end
