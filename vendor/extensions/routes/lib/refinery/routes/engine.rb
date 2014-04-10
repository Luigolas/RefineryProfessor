module Refinery
  module Routes
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Routes

      engine_name :refinery_routes

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "routes"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.routes_admin_routes_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/routes/route',
            :title => 'name'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Routes)
      end
    end
  end
end
