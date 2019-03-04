class Api::V1::ReviewsController < ApplicationController
  def create
    @establishment = Establishment.find_or_create_by(yelp_id: review_params[:yelp_id])

    @review = Review.new(establishment_id: @establishment.id, user_id: @user.id, name: review_params[:name], women_rating: review_params[:women_rating], poc_rating: review_params[:poc_rating], lgbtq_rating: review_params[:lgbtq_rating], review_text: review_params[:review])

    if @review.save
        render json: @review
      else
        render json: {errors: @review.errors.full_messages}
      end
  end

  # def update
  # end

private

  def review_params
    params.require(:review).permit( :yelp_id, :name, :poc_rating, :women_rating, :lgbtq_rating, :review)
  end
end
