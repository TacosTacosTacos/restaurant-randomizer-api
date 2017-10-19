class PreferenceSerializer < ActiveModel::Serializer
  attributes :id, :location, :search_radius, :user_id
  has_one :user
end
