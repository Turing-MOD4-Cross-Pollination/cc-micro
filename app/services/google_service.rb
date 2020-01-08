class GoogleService
    attr_reader :id

    def initialize(location)
        @id = 11
        @location = get_json(location)
    end

    def latitude
        @location[:results][0][:geometry][:location][:lat]
    end

    def longitude
        @location[:results][0][:geometry][:location][:lng]
    end

    private
    attr_reader :location

    def get_json(location)
        response = connection(location).get("maps/api/geocode/json")
        JSON.parse(response.body, symbolize_names: true)
    end

    def connection(location)
        Faraday.new(
            url: 'https://maps.googleapis.com/',
            params: { key: ENV['GOOGLE_API_KEY']
                    }.merge({address: location['address']})
        )
    end
end 