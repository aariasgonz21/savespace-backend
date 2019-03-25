class AddYelpIdToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :yelp_id, :string
  end
end
