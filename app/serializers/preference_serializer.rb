class PreferenceSerializer < ActiveModel::Serializer
  attributes :id, :location, :search_radius
  has_one :user
end
