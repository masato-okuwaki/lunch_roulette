class ShopsController < ApplicationController
  def index
  end

  def new
    @shop = Shop.new
    @user = User.new
  end

  def create
    @shop = Shop.new(shop_params)
    @shop.save
    @user = User.new(user_params)
    @user.save
  end

  private

  def shop_params
    params.require(:shop).permit(:name, :url, :genre_id, :area_id)
  end

  def user_params
    params.require(:user).permit(:name)
  end
end
