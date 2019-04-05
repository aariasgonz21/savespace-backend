class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.references :user
      t.references :establishment
      t.string :name
      t.string :review_text
      t.float :poc_rating
      t.float :women_rating
      t.float :lgbtq_rating

      t.timestamps
    end
  end
end
