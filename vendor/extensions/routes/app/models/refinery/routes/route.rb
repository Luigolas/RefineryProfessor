module Refinery
  module Routes
    class Route < Refinery::Core::BaseModel
      self.table_name = 'refinery_routes'

      attr_accessible :name, :region, :duration, :authors, :description, :sections, :position

      translates :region, :description, :sections

      class Translation
        attr_accessible :locale
      end

      validates :name, :presence => true, :uniqueness => true
    end
  end
end
