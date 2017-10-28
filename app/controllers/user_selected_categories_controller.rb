class UserSelectedCategoriesController < ProtectedController
  before_action :set_user_selected_category, only: %i[show update destroy]

  # GET /user_selected_categories
  def index
    @user_selected_categories = current_user.user_selected_categories

    render json: @user_selected_categories
  end

  # GET /user_selected_categories/1
  def show
    render json: current_user.UserSelectedCategory.find(params[:id])
  end

  # POST /user_selected_categories
  def create
    @user_category = current_user.user_selected_categories.build(user_selected_category_params)

    if @user_category.save
      render json: @example, status: :created
    else
      render json: @example.errors, status: :unprocessable_entity
    end
  end

  # # PATCH/PUT /user_selected_categories/1
  # def update
  #   if @user_selected_category.update(user_selected_category_params)
  #     render json: @user_selected_category
  #   else
  #     render json: @user_selected_category.errors, status: :unprocessable_entity
  #   end
  # end

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
    params.require(:user_selected_category).permit(:restaurant_category_id)
  end
end
