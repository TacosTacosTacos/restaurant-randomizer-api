require 'rails_helper'

RSpec.describe "UserSelectedCategories", type: :request do
  describe "GET /user_selected_categories" do
    it "works! (now write some real specs)" do
      get user_selected_categories_path
      expect(response).to have_http_status(200)
    end
  end
end
