class CartCommodity < ActiveRecord::Base
  belongs_to :cart
  belongs_to :commodity
end
