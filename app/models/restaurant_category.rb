class RestaurantCategory < ApplicationRecord
  has_many :users, through: :user_selected_categories
end
