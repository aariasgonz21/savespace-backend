class Api::V1::ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
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
    params.require(:review).permit(:user_id, :establishment_id, :YelpID, :review_text, :poc_rating, :women_rating, :lgbtq_rating)
  end
end
