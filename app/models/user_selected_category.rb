class UserSelectedCategory < ApplicationRecord
  belongs_to :user
  belongs_to :restaraunt_category
end
