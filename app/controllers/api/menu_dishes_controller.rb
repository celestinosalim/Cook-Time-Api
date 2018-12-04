class Api::MenuDishesController < ApplicationController
  before_action :set_menu_dish, only: [:show, :update, :destroy]

  # GET /menu_dishes
  def index
    @menu_dishes = MenuDish.all

    render json: @menu_dishes
  end

  # GET /menu_dishes/1
  def show
    render json: @menu_dish
  end

  # POST /menu_dishes
  def create
    @menu_dish = MenuDish.new(menu_dish_params)

    if @menu_dish.save
      render json: @menu_dish, status: :created, location: @menu_dish
    else
      render json: @menu_dish.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /menu_dishes/1
  def update
    if @menu_dish.update(menu_dish_params)
      render json: @menu_dish
    else
      render json: @menu_dish.errors, status: :unprocessable_entity
    end
  end

  # DELETE /menu_dishes/1
  def destroy
    @menu_dish.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_menu_dish
      @menu_dish = MenuDish.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def menu_dish_params
      params.require(:menu_dish).permit(:menu_id, :dish_id)
    end
end
