class UserSelectedCategoriesController < ProtectedController
  before_action :set_user_selected_category, only: [:show, :update, :destroy]

  # GET /user_selected_categories
  def index
    @user_selected_categories = UserSelectedCategory.all

    render json: @user_selected_categories
  end

  # GET /user_selected_categories/1
  def show
    render json: @user_selected_category
  end

  # POST /user_selected_categories
  def create
    @user_selected_category = UserSelectedCategory.new(user_selected_category_params)

    if @user_selected_category.save
      render json: @user_selected_category, status: :created, location: @user_selected_category
    else
      render json: @user_selected_category.errors, status: :unprocessable_entity
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
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_selected_category
      @user_selected_category = UserSelectedCategory.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_selected_category_params
      params.require(:user_selected_category).permit(:user_id, :restaurant_category_id)
    end
end
