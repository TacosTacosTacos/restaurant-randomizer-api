class CreatePreferences < ActiveRecord::Migration[5.1]
  def change
    create_table :preferences do |t|
      t.references :user, foreign_key: true
      t.string :location
      t.integer :search_radius

      t.timestamps
    end
  end
end
