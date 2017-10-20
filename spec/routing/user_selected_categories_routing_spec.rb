require "rails_helper"

RSpec.describe UserSelectedCategoriesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/user_selected_categories").to route_to("user_selected_categories#index")
    end


    it "routes to #show" do
      expect(:get => "/user_selected_categories/1").to route_to("user_selected_categories#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/user_selected_categories").to route_to("user_selected_categories#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/user_selected_categories/1").to route_to("user_selected_categories#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/user_selected_categories/1").to route_to("user_selected_categories#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/user_selected_categories/1").to route_to("user_selected_categories#destroy", :id => "1")
    end

  end
end
