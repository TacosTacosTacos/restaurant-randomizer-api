class UserSelectedCategoriesController < ProtectedController
  before_action :set_user_selected_category, only: [:show, :update, :destroy]

  # GET /user_selected_categories
  def index
    @user_selected_categories = current_user.user_selected_categories

    render json: @user_selected_categories
  end

  # GET /user_selected_categories/1
  def show
    render json: UserSelectedCategory.find(params[:id])
  end

  # POST /user_selected_categories
  def create
    user_category = UserSelectedCategory.create(user_selected_category_params)

    if user_category.valid?
      render json: user_category, status: :created
    else
      render json: user_category.errors, status: :bad_request
    end
  end

  # PATCH/PUT /user_selected_categories/1
  def update
    if @user_selected_category.update(user_selected_category_params)
      render json: @user_selected_category
    else
      render json: @user_selected_category.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_selected_categories/1
  def destroy
    @user_selected_category.destroy

    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_selected_category
      @user_selected_category = current_user.user_selected_categories.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_selected_category_params
      params.require(:user_selected_category).permit(:user_id, :restaurant_category_id)
    end
end
