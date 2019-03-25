class AddEstablishmentNamelToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :establishment_name, :string
  end
end
