class CreateRestaurantCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurant_categories do |t|
      t.string :four_square_id, index: { unique: true }
      t.string :name, index: { unique: true }

      t.timestamps
    end
  end
end
