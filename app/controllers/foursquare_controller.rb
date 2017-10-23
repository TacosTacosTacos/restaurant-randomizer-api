# frozen_string_literal: true
class FoursquareController < ProtectedController
  before_action :set_preference, only: %i[retrieveData]
  before_action :set_user_selected_categories, only: %i[retrieveData]

  # GET '/foursquare'
  def retrieveData
    require 'open-uri'
    require 'json'
    # Create an empty storage array for venues
    storage = {}
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
    fs_category_ids = @user_selected_categories.map do |user_selected_category|
      user_selected_category.restaurant_category.four_square_id
    end

    # Limit the amount of data being pulled by each request.
    # FS supports 50 results per request, but I want to reduce
    # the amount of data being sent back for efficiency purposes
    limit = 50 / fs_category_ids.length

    # For each User Categories associated foursquare ID, retrieve data from foursquare
    fs_category_ids.each do |fs_category_id|
      response = open("https://api.foursquare.com/v2/venues/search?near=#{near}&client_id=#{client_id}&client_secret=#{client_secret}&v=#{v}&categoryId=#{fs_category_id}&radius=#{search_radius}&limit=#{limit}")
      response_status = response.status[0]
      # if the call was successful, store the data for response purposes
      if response_status == '200'
        data_hash = JSON.parse(response.read)
        storage['venues'] << data_hash['response']['venues']
      end
    end

    render json: storage
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
