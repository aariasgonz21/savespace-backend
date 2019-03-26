class Api::V1::ReviewsController < ApplicationController
  def create
    @establishment = Establishment.find_or_create_by(yelp_id: review_params[:yelp_id], name: review_params[:establishment_name])
    @review = Review.new(establishment_id: @establishment.id, establishment_name: @establishment.name, user_id: review_params[:user_id], yelp_id: @establishment.yelp_id, name: review_params[:name], women_rating: review_params[:women_rating], poc_rating: review_params[:poc_rating], lgbtq_rating: review_params[:lgbtq_rating], review_text: review_params[:review])


    if @review.save
        render json: ReviewSerializer.new(@review)
      else
        render json: {errors: @review.errors.full_messages}
      end
  end

  # def update
  # end

private

  def review_params
    params.require(:review).permit(:user_id, :yelp_id, :name, :poc_rating, :women_rating, :lgbtq_rating, :review, :establishment_name)
  end
end
