class Establishment < ApplicationRecord
  has_many :reviews

    #ENV["API_KEY"]
    def self.search_single_est(establishment_id)
      url = "https://api.yelp.com/v3/businesses/#{establishment_id}"
        # https://api.yelp.com/v3/businesses/{id}
        # byebug
      response = HTTP.auth("Bearer #{ENV["API_KEY"]}").get(url)
      business_hash = JSON.parse(response.body)
      business_hash
    end

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
      Establishment.all.map{|establishment|
        establishment.reviews.map{|review|
          review.women_rating
          }
        }
    end

end
