class Api::V1::CoordinatesController < ApplicationController
    def show
        coords = GoogleService.new(location_params)
        render json: CoordinatesSerializer.new(coords)
    end 

    private
    
    def location_params
        params.permit(:address)
    end 
end 