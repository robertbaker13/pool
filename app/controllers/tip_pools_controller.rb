class TipPoolsController < ApplicationController
  def index
    @schedule = Schedule.find(params[:schedule_id])
    @tip_pools = TipPool.where(schedule: @schedule)
    render json: @tip_pools
  end

  def show
    @tip_pool = TipPool.find(params[:id])
    render json: @tip_pool
  end

  def new
    @tip_pool = TipPool.new
    render json: @tip_pool
  end

  def create
    @schedule = Schedule.find(params[:schedule_id])
    @tip_pool = TipPool.new(tip_pool_params)

    if @tip_pool.save
      render 'show'
    else
      render 'new'
    end
  end

  def edit
    @tip_pool = TipPool.find(params[:id])
    render json: @tip_pool
  end

  def update
    @tip_pool = TipPool.find(params[:id])

    if @tip_pool.update(tip_pool_params)
      render 'show'
    else
      render 'edit'
    end
  end

  def destroy
    @tip_pool = TipPool.find(params[:id])

    @tip_pool.destroy
    render 'index'
  end


  private

  def tip_pool_params
    params.require(:tip_pool).permit(:amount, :dispersed, :dispersement_point)
  end
end

