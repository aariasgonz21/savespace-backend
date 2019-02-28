class Establishment < ApplicationRecord
  has_many :reviews

    #ENV["API_KEY"]

    def self.search(term, location)
      url = "https://api.yelp.com/v3/businesses/search"
      params = {
        term: term,
        location: location,
        limit: 10
      }

      response = HTTP.auth("Bearer #{ENV["API_KEY"]}").get(url, params: params)
      business_hash = JSON.parse(response.body)
      business_hash['businesses']
    end

    def woman_avg()

    end
end
