class CreateEstablishments < ActiveRecord::Migration[5.2]
  def change
    create_table :establishments do |t|
      t.string :yelpID
      t.string :name
      t.string :category
      t.boolean :open
      t.string :hours
      t.string :phone
      t.string :image

      t.timestamps
    end
  end
end
