class CoordinatesSerializer
  include FastJsonapi::ObjectSerializer
  attributes :longitude, :latitude
end