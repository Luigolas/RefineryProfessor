module Refinery
  module Routes
    class RoutesController < ::ApplicationController

      before_filter :find_all_routes
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @route in the line below:
        present(@page)
      end

      def show
        @route = Route.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @route in the line below:
        present(@page)
      end

    protected

      def find_all_routes
        @routes = Route.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/routes").first
      end

    end
  end
end
