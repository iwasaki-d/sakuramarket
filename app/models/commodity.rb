class Commodity < ActiveRecord::Base
  scope :home_list, -> { where(view_enabled: 1).order(:position) }
end
