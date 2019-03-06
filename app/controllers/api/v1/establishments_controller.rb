class Api::V1::EstablishmentsController < ApplicationController
  skip_before_action :authorized, only: [:create]
  # def index
  #   @establishments = Establishment.all
  #   render json: @establishments
  # end
  # #
  def show
    # @establishment = Establishment.search_single_est(params[:id])
    # @reviews = Establishment.find_by(yelp_id: params[:id]).reviews
    # render json: {est: @establishment, review: @reviews}
    @women_avg = Establishment.find_by(params[:id]).woman_avg
    @poc_avg = Establishment.find_by(params[:id]).poc_avg
    @lgbtq_avg = Establishment.find_by(params[:id]).lgbtq_avg

    render json: {Establishment.search_single_est(params[:id])}
  end

  def create
    render json: Establishment.search(params["term"], params["location"])
  end

  # def search
  #
  # end
  #
  # def edit
  # end
  #
  # def update
  # end
  #
  # private
  #
  # def establishment_params
  #   params.require(:establishment).permit(:YelpId, :name, :category, :open, :hours, :phone, :image)
  # end
end
