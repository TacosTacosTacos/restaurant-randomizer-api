require "rails_helper"

RSpec.describe RestaurantCategoriesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/restaurant_categories").to route_to("restaurant_categories#index")
    end


    it "routes to #show" do
      expect(:get => "/restaurant_categories/1").to route_to("restaurant_categories#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/restaurant_categories").to route_to("restaurant_categories#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/restaurant_categories/1").to route_to("restaurant_categories#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/restaurant_categories/1").to route_to("restaurant_categories#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/restaurant_categories/1").to route_to("restaurant_categories#destroy", :id => "1")
    end

  end
end
