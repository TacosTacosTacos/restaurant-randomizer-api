class PreferencesController < ProtectedController
  before_action :set_preference, only: [:show, :update, :destroy]

  # GET /preferences
  def index
    @preference = current_user.preference

    render json: @preference
  end

  # GET /preferences/1
  def show
    render json: @preference
  end

  # POST /preferences
  def create

    preference = Preference.create(preference_params)

    if preference.valid?
      render json: preference, status: :created
    else
      render json: preference.errors, status: :bad_request
    end
  end

  # PATCH/PUT /preferences/1
  def update
    if @preference.update(preference_params)
      head :no_content
    else
      render json: @preference.errors, status: :unprocessable_entity
    end
  end

  # DELETE /preferences/1
  def destroy
    @preference.destroy

    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_preference
      @preference = current_user.preference
    end

    # Only allow a trusted parameter "white list" through.
    def preference_params
      params.require(:preference).permit(:location, :search_radius, :user_id)
    end
end
