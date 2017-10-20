class CreateUserSelectedCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :user_selected_categories do |t|
      t.references :user, foreign_key: true
      t.references :restaurant_category, foreign_key: true

      t.timestamps
    end
    add_index(:user_selected_categories, %i[user_id restaurant_category_id],
              unique: true, name: 'unique_user_selected_categories')
  end
end
