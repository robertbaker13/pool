class PositionsController < ApplicationController
  def index
    @positions = Position.where(archived: false) #limit to current organization
    render json: @positions
  end

  def show
    @position = Position.find(params[:id])
    render json: @position
  end

  def new
    @position = Position.new
    render json: @position
  end

  def create
    @position = Position.new(position_params)

    if @position.save
      render 'show'
    else
      render 'new'
    end
  end

  def edit
    @position = Position.find(params[:id])
    render json: @position
  end

  def update
    @position = Position.find(params[:id])

    if @position.update(position_params)
      render 'show'
    else
      render 'edit'
    end
  end

  def destroy
    @position = Position.find(params[:id])

    @position.destroy
    render 'index'
  end


  private

  def position_params
    params.require(:position).permit(:title, :permission)
  end
end
