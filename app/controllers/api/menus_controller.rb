class Api::MenusController < ApplicationController
  before_action :authenticate_user
  before_action :set_menu, only: [:show, :update, :destroy]

  # GET /menus
  def index
    @menus = Menu.all

    render json: @menus
  end

  # GET /menus/1
  def show
    render json: @menu
  end

  # POST /menus
  def create
    @menu = Menu.new(menu_params)

    if @menu.save
      render json: @menu, status: :created, location: @menu
    else
      render json: @menu.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /menus/1
  def update
    @menu.dishes.destroy_all
    if @menu.update_attributes(menu_params)

      # byebug

      render json: @menu
    else
      render json: @menu.errors, status: :unprocessable_entity
    end
  end

  # DELETE /menus/1
  def destroy
    @menu.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_menu
      @menu = Menu.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def menu_params
      params.require(:menu).permit(:day, :image, :dishes_attributes => [:id, :name,:description, :image])
    end

end
