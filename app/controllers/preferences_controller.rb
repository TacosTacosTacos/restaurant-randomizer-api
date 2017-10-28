class PreferencesController < ProtectedController
  before_action :set_preference, only: %i[show update destroy]

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
  # def create
  #   @preference = Preference.new(preference_params)
  #
  #   if @preference.save
  #     render json: @preference, status: :created
  #   else
  #     render json: @preference.errors, status: :unprocessable_entity
  #   end
  # end

  def create
    @preference = current_user.build_preference(preference_params)

    if @preference.save
      render json: @preference, status: :created
    else
      render json: @preference.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /preferences/1
  def update
    if @preference.update(preference_params)
      # head :no_content
      render json: @preference
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
    params.require(:preference).permit(:location, :search_radius)
  end
end
