module Refinery
  module Customizations
    class CustomizationsController < ::ApplicationController

      before_filter :find_all_customizations
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @customization in the line below:
        present(@page)
      end

      def show
        @customization = Customization.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @customization in the line below:
        present(@page)
      end

    protected

      def find_all_customizations
        @customizations = Customization.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/customizations").first
      end

    end
  end
end
