class UserSelectedCategorySerializer < ActiveModel::Serializer
  attributes :id, :user_id, :restaurant_category_id
  # has_one :user
  has_one :restaurant_category
end
