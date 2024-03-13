class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart
  def index
    @products = Product.order(:title)
  end

  private
  def product_params
    params.require(:product).permit(:title, :description, :image_url, :price)
  end
end
