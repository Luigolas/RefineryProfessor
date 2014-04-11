module Refinery
  module Customizations
    class Customization < Refinery::Core::BaseModel
      self.table_name = 'refinery_customizations'

      belongs_to :image, :class_name => 'Image'

      alias_attribute :description, :desctiption

      attr_accessible :name, :desctiption, :image_id, :position

      validates :name, :presence => true, :uniqueness => true
    end
  end
end
