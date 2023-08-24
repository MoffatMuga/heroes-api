class PowersController < ApplicationController
    before_action :set_power, only: [:show, :update]
  rescue_from ActiveRecord::RecordNotFound, with: :power_not_found

  def index
    @powers = Power.all
    render json: @powers
  end

  def show
    render json: @power
  end

  def update
    if @power.update(power_params)
      render json: @power
    else
      render json: { errors: @power.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def set_power
    @power = Power.find(params[:id])
  end

  def power_params
    params.require(:power).permit(:description)
  end

  def power_not_found
    render json: { error: 'Power not found' }, status: :not_found
  end
end
