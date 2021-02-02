class CookingsController < ApplicationController
  def index
  end

  def new
  end

  def edit
  end

  def show
  end

  private
  
  def message_params
    params.require(:cooking).permit(:name, :recipe, :point, :material, :image).merge(user_id: current_user.id)
end
