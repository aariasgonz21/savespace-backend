class Establishment < ApplicationRecord
  has_many :reviews

    #ENV["API_KEY"]
    def self.search_single_est(establishment_id)
      url = "https://api.yelp.com/v3/businesses/#{establishment_id}"
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

    def avg(item)
      all_ratings = self.reviews.map {|review|
           review.send(item)
      }
      filtered_ratings = all_ratings.select{|rating|rating != 0.0 }
      (filtered_ratings.sum / filtered_ratings.length * 10).floor / 10.0
    end

    def woman_avg()
      avg(:women_rating)
    end

    def poc_avg()
      avg(:poc_rating)
    end

    def lgbtq_avg()
      avg(:lgbtq_rating)
    end

    def overall_ratings()
      {lgbtq: lgbtq_avg(), poc: poc_avg(), women: woman_avg()}
    end

end
