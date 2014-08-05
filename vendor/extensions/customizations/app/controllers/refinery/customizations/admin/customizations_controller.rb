module Refinery
  module Customizations
    module Admin
      class CustomizationsController < ::Refinery::AdminController

        crudify :'refinery/customizations/customization',
                :title_attribute => 'name',
                :xhr_paging => true
        def index
          @customization=Refinery::Customizations::Customization.first
        end

      end
    end
  end
end
