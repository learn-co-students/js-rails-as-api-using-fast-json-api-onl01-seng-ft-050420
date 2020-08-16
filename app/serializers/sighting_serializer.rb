class SightingSerializer
  include FastJsonapi::ObjectSerializer
  attributes :created_at
  belongs_to :bird
  belongs_to :location

  def index
    sightings = Sighting.all
    render json: SightingSerializer.new(sightings)
  end
  
end
