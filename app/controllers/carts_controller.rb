class CartsController < ApplicationController
  before_action :set_cart, only: %i(edit update)

  def edit
  end

  private

  def set_cart
    @cart = Cart.find(params[:id])
  end
end


