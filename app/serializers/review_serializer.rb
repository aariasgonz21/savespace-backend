class ReviewSerializer < ActiveModel::Serializer
  attributes :user_id, :establishment_id, :name, :review_text, :poc_rating, :women_rating, :lgbtq_rating
  belongs_to :user
end
