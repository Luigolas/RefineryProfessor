module Refinery
  module Customizations
    class Customization < Refinery::Core::BaseModel
      self.table_name = 'refinery_customizations'

      belongs_to :image, :class_name => 'Image'

      attr_accessible :name, :desctiption, :image_id, :position

      validates :name, :presence => true, :uniqueness => true
    end
  end
end
