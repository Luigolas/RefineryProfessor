module Refinery
  module Routes
    module Admin
      class RoutesController < ::Refinery::AdminController

        crudify :'refinery/routes/route',
                :title_attribute => 'name',
                :xhr_paging => true

      end
    end
  end
end
