class UserSelectedCategory < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant_category
end
