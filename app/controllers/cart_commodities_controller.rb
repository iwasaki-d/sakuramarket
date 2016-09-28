class CartCommoditiesController < ApplicationController
  before_action :set_cart, only: %i(create)
  before_action :set_commodity, only: %i(create)

  def create
    @cart.cart_commodities.build(cart_commodity_params)
    if @cart.save
      redirect_to :back, notice: 'カートに投入しました。'
    else
      redirect_to :back, alert: 'カート投入に失敗しました。'
    end
  end

  private

  def set_cart
    @cart = current_user.carts.active_cart
    @cart ||= current_user.carts.build
  end

  def set_commodity
    @commodity = Commodity.find(cart_commodity_params[:commodity_id])
  end

  def cart_commodity_params
    params.require(:cart_commodity).permit(:quantities, :commodity_id)
  end
end
