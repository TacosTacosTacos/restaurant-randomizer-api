class PreferencesController < ProtectedController
  before_action :set_preference, only: [:show, :update, :destroy]

  # GET /preferences
  def index
    @preferences = current_user.preferences

    render json: @preferences
  end

  # GET /preferences/1
  def show
    render json: @preference.find(params[:id])
  end

  # POST /preferences
  def create
    @example = current_user.preferences.build(preference_params)

    if @example.save
      render json: @example, status: :created
    else
      render json: @example.errors, status: :unprocessable_entity
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
      @preference = current_user.preferences.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def preference_params
      params.require(:preference).permit(:location, :search_radius)
    end
end
