require 'rails_helper'

RSpec.describe 'google geocoding api service' do
    it 'returns lat and long of a given location' do
        location = 'Denver, CO'
        service = GoogleService.new(location)

        expect(service).to be_an_instance_of(GoogleService)
    end 
end 