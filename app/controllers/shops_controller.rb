class ShopsController < ApplicationController
  def index
  end

  def new
    @shop = Shop.new
  end

  def create
    @shop = Shop.new(shop_params)
    @shop.save
  end

  private

  def shop_params
    params.require(:shop).permit(:name, :url, :genre, :area, :registered_name)
  end
end
