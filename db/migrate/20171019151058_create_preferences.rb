class CreatePreferences < ActiveRecord::Migration[5.1]
  def change
    create_table :preferences do |t|
      t.belongs_to :user, index: { unique: true }, foreign_key: true
      t.string :location
      t.integer :search_radius

      t.timestamps
    end
  end
end
