class Api::V1::EstablishmentsController < ApplicationController
  skip_before_action :authorized, only: [:create]
  # def index
  #   @establishments = Establishment.all
  #   render json: @establishments
  # end
  # #
  def show
    @establishment = Establishment.search_single_est(params[:id])
    if Establishment.find_by(yelp_id: @establishment["id"])
      @reviews = Establishment.find_by(yelp_id: @establishment["id"]).reviews.map{|rev| ReviewSerializer.new(rev)}
    else
      @reviews = []
    end
    #byebug
    render json:{establishment: @establishment, reviews: @reviews}
  end

  def create
    @establishments = Establishment.search(params["term"], params["location"])
    test = @establishments.map do |establishment|
      @establishment = Establishment.find_by(yelp_id: establishment["id"])
      if @establishment
        establishment.merge(@establishment.overall_ratings())
      else
        establishment
      end
    end
    render json: test
  end
end
