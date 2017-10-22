class RestaurantCategoriesController < ProtectedController
  before_action :set_restaurant_category, only: %i[show update destroy]

  # GET /restaurant_categories
  def index
    @restaurant_categories = RestaurantCategory.all

    render json: @restaurant_categories
  end

  # GET /restaurant_categories/1
  def show
    render json: @restaurant_category
  end

  # POST /restaurant_categories
  def create
    @restaurant_category = RestaurantCategory.new(restaurant_category_params)

    if @restaurant_category.save
      render json: @restaurant_category, status: :created, location: @restaurant_category
    else
      render json: @restaurant_category.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /restaurant_categories/1
  def update
    if @restaurant_category.update(restaurant_category_params)
      render json: @restaurant_category
    else
      render json: @restaurant_category.errors, status: :unprocessable_entity
    end
  end

  # DELETE /restaurant_categories/1
  def destroy
    @restaurant_category.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_restaurant_category
    @restaurant_category = RestaurantCategory.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def restaurant_category_params
    params.require(:restaurant_category).permit(:four_square_id, :name)
  end
end
