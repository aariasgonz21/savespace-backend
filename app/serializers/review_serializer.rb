class ReviewSerializer < ActiveModel::Serializer
  attributes :user_id, :establishment_id, :name, :review_text, :poc_rating, :women_rating, :lgbtq_rating, :establishment_name, :yelp_id
  belongs_to :user
end
