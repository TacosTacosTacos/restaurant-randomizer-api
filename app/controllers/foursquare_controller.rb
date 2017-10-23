# frozen_string_literal: true
class FoursquareController < ProtectedController
  before_action :set_preference, only: %i[retrieveData]
  before_action :set_user_selected_categories, only: %i[retrieveData]

  # GET '/foursquare'
  def retrieveData
    require 'open-uri'
    require 'json'
    # Create an empty storage array for venues
    storage = Hash.new
    storage['venues'] = []

    # Setup the users preference information
    near = @preference.location
    search_radius = @preference.search_radius * 1610

    # Setup the client information
    client_id = '05AWY3YE331X33NDYBXNAH1AAJU013CEVX54PEV5TG0EISGK'
    client_secret = 'ZQQN1W4V0V0E12XAYDUAMVWBCMNQSQUWUZQB1JVWFLYNMUCY'

    # Setup the version #
    v = '20170801'

    # Create the array of fourSquareCategories
    fs_category_ids = '4d4b7105d754a06374d81259,4bf58dd8d48988d110941735'

    response = open("https://api.foursquare.com/v2/venues/search?near=#{near}&client_id=#{client_id}&client_secret=#{client_secret}&v=#{v}&categoryId=#{fs_category_ids}&radius=#{search_radius}")
    data_hash = JSON.parse(response.read)
    storage['venues'] << data_hash['response']['venues']
    render json: storage['venues']
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_preference
    @preference = current_user.preference
  end

  def set_user_selected_categories
    @user_selected_categories = current_user.user_selected_categories
  end
  # # Only allow a trusted parameter "white list" through.
  # def preference_params
  #   params.require(:preference).permit(:location, :search_radius, :user_id)
  # end
end
