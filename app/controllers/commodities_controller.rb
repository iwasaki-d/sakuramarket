class CommoditiesController < ApplicationController
  before_action :set_commodity, only: [:show, :edit, :update, :destroy]

  def index
    @commodities = Commodity.all
  end

  def show
  end

  def new
    @commodity = Commodity.new
  end

  def edit
  end

  def create
    @commodity = Commodity.new(commodity_params)

    respond_to do |format|
      if @commodity.save
        format.html { redirect_to @commodity, notice: 'Commodity was successfully created.' }
        format.json { render :show, status: :created, location: @commodity }
      else
        format.html { render :new }
        format.json { render json: @commodity.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @commodity.update(commodity_params)
        format.html { redirect_to @commodity, notice: 'Commodity was successfully updated.' }
        format.json { render :show, status: :ok, location: @commodity }
      else
        format.html { render :edit }
        format.json { render json: @commodity.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @commodity.destroy
    respond_to do |format|
      format.html { redirect_to commodities_url, notice: 'Commodity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_commodity
      @commodity = Commodity.find(params[:id])
    end

    def commodity_params
      params.require(:commodity).permit(:name, :price, :desctipion, :view_enabled, :position)
    end
end
