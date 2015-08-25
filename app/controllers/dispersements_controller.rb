class DispersementsController < ApplicationController
  def index
    @employee = Employee.find(params[:employee_id])
    @dispersements = Dispersement.where(employee: @employee)
    render json: @dispersements
  end

  def show
    @dispersement = Dispersement.find(params[:id])
    render json: @dispersement
  end

  def new
    @dispersement = Dispersement.new
    render json: @dispersement
  end

  def create
    @employee = Employee.find(params[:employee_id])
    @dispersement = Dispersement.new(dispersement_params)

    if @Dispersement.save
      render 'show'
    else
      render 'new'
    end
  end

  def edit
    @dispersement = Dispersement.find(params[:id])
    render json: @dispersement
  end

  def update
    @dispersement = Dispersement.find(params[:id])

    if @dispersement.update(dispersement_params)
      render 'show'
    else
      render 'edit'
    end
  end

  def destroy
    @dispersement = Dispersement.find(params[:id])

    @dispersement.destroy
    render 'index'
  end


  private

  def dispersement_params
    params.require(:employee).permit(:nickname, :given_name, :family_name, :email, :phone, :pictue, :token, :expiration)
  end
end
