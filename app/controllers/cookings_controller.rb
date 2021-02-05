class CookingsController < ApplicationController
  before_action :cooking_find, only: [:show, :edit, :update, :destroy]

  def index
    @cookings = Cooking.all
  end

  def new
    @cooking = Cooking.new
  end

  def edit
  end

  def show
  end

  private
  
  def cooking_params
    params.require(:cooking).permit(:name, :recipe, :point, :material, :image).merge(user_id: current_user.id)
  end

  def cooking_find
    @cooking = Cooking.find(params[:id])
  end
end
