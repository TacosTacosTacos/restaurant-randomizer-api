class UserSelectedCategorySerializer < ActiveModel::Serializer
  attributes :id
  has_one :user
  has_one :restaraunt_category
end
