class Api::IngredientDishesController < ApplicationController
  before_action :set_ingredient_dish, only: [:show, :update, :destroy]

  # GET /ingredient_dishes
  def index
    @ingredient_dishes = IngredientDish.all

    render json: @ingredient_dishes
  end

  # GET /ingredient_dishes/1
  def show
    render json: @ingredient_dish
  end

  # POST /ingredient_dishes
  def create
    @ingredient_dish = IngredientDish.new(ingredient_dish_params)

    if @ingredient_dish.save
      render json: @ingredient_dish, status: :created, location: @ingredient_dish
    else
      render json: @ingredient_dish.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ingredient_dishes/1
  def update
    if @ingredient_dish.update(ingredient_dish_params)
      render json: @ingredient_dish
    else
      render json: @ingredient_dish.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ingredient_dishes/1
  def destroy
    @ingredient_dish.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ingredient_dish
      @ingredient_dish = IngredientDish.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def ingredient_dish_params
      params.require(:ingredient_dish).permit(:ingredient_id, :dish_id)
    end
end
