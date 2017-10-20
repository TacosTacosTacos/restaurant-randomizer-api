# frozen_string_literal: true

class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :preference, :user_selected_categories
end
