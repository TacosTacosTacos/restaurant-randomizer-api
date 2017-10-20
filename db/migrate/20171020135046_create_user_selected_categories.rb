class CreateUserSelectedCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :user_selected_categories do |t|
      t.references :user, foreign_key: true
      t.references :restaraunt_category, foreign_key: true

      t.timestamps
    end
  end
end
