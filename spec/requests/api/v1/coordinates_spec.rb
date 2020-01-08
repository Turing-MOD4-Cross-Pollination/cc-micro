require 'rails_helper'

describe 'Google Service' do
    it 'can return latitude and longitude for given location' do
        post '/api/v1/coordinates?address=1488 S Kenton St, Aurora, CO 80010'

        expect(response).to be_successful
    
        parsed_data = JSON.parse(response.body, symbolize_names: true)

        expect(response.content_type).to eq('application/json')
        expect(parsed_data.class).to eq(Hash)
        expect(parsed_data[:data][:attributes].count).to eq(2)
        expect(parsed_data[:data][:attributes].keys).to eq([:longitude, :latitude])
    end 
end 