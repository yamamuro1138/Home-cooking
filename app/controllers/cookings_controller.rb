class CookingsController < ApplicationController
  before_action :cooking_find, only: [:show, :edit, :update, :destroy]

  def index
    @cookings = Cooking.all
  end

  def new
    @cooking = Cooking.new
  end

  def create
    @cooking = Cooking.new(cooking_params)

    if @cooking.valid?
      @cooking.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    redirect_to root_path unless current_user.id == @cooking.user_id
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
