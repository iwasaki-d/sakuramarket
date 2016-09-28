class HomeController < ApplicationController
  before_action :set_user, only: %i(index)
  before_action :set_commodities, only: %i(index)

  def index
  end

  private

  def set_user
    @user = current_user || User.new
  end

  def set_commodities
    @commoditites = Commodity.home_list
  end

end
