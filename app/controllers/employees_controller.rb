class EmployeesController < ApplicationController
  def root
    p "params: #{params}"
  end

  def index
    @employees = Employee.where(archived: false) #limit to current organization
    render json: @employees
  end

  def show
    @employee = Employee.find(params[:id])
    render json: @employee
  end

  def new
    @employee = Employee.new
    render json: @employee
  end

  def create
    @employee = Employee.new(employee_params)

    if @employee.save
      render 'show'
    else
      render 'new'
    end
  end

  def edit
    @employee = Employee.find(params[:id])
    render json: @employee
  end

  def update
    @employee = Employee.find(params[:id])

    if @employee.update(employee_params)
      render 'show'
    else
      render 'edit'
    end
  end

  def destroy
    @employee = Employee.find(params[:id])

    @employee.destroy
    render 'index'
  end


  private

  def employee_params
    params.require(:employee).permit(:nickname, :given_name, :family_name, :email, :phone, :pictue, :token, :expiration)
  end
end
