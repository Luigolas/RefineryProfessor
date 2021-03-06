# encoding: utf-8

Refinery::I18n.configure do |config|
  config.default_locale = :en

  # config.current_locale = :en

  config.default_frontend_locale = :en

  config.frontend_locales = [:es, :en]

  config.locales = {:en=>"English", :es=>"Español"}
end
