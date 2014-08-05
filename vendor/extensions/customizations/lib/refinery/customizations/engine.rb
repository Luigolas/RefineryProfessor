module Refinery
  module Customizations
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Customizations

      engine_name :refinery_customizations

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "customizations"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.customizations_admin_customizations_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/customizations/customization',
            :title => 'name'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Customizations)
      end
    end
  end
end
