class CampersController < ApplicationController
  def index
    campers = Camper.all
    render json: campers
  end

  def show
    camper = Camper.find_by(id: params[:id])
    if camper
      render json: camper
    else
      render json: { error: 'Camper not found' }, status: not_found
    end
  end

  def create
    camper = Camper.create(camper_params)
    if camper
      render json: camper
    else
      render json: { error: 'validation error' }, status: unprocessable_entity
    end
  end

  private

  def camper_params
    params.permit(:name, :age)
  end
end
