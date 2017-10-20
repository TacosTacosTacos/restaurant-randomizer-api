# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_one :preference
  has_many :user_selected_categories
  has_many :restaurant_categories, through: :user_selected_categories
end
