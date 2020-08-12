class SightingsController < ApplicationController

  def index 
    sightings = Sighting.all 
    options = { include: %i[bird location]}
    render json: SightingSerializer.new(sightings, options)
  end 

  def show
    sighting = Sighting.find(params[:id])
    options = { include: %i[bird location]}
    render json: SightingSerializer.new(sighting, options)
  end
end
