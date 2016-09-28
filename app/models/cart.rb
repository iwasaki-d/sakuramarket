class Cart < ActiveRecord::Base
  belongs_to :user
  has_many :cart_commodities, dependent: :destroy

  scope :active_cart, -> { find_by(ordered: 0) }
end
