class DispersementsController < ApplicationController
  def index
    @dispersements = Dispersment.all #limit to current organization
    render json: @dispersements
  end

  def show
    @dispersement = Dispersment.find(params[:id])
    render json: @dispersement
  end

  def new
    @dispersement = Dispersment.new
    render json: @dispersement
  end

  def create
    @dispersement = Dispersment.new(dispersement_params)

    if @Dispersment.save
      render 'show'
    else
      render 'new'
    end
  end

  def edit
    @dispersement = Dispersment.find(params[:id])
    render json: @dispersement
  end

  def update
    @dispersement = Dispersment.find(params[:id])

    if @dispersment.update(employee_params)
      render 'show'
    else
      render 'edit'
    end
  end

  def destroy
    @dispersement = Dispersment.find(params[:id])

    @dispersment.destroy
    render 'index'
  end


  private

  def dispersement_params
    params.require(:employee).permit(:nickname, :given_name, :family_name, :email, :phone, :pictue, :token, :expiration)
  end
end
