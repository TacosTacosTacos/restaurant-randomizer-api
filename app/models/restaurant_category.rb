class RestaurantCategory < ApplicationRecord
  has_many :user_selected_categories
  has_many :users, through: :user_selected_categories
end
