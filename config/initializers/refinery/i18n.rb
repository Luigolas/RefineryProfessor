# encoding: utf-8

Refinery::I18n.configure do |config|
  config.default_locale = :es

  # config.current_locale = :en

  config.default_frontend_locale = :es

  config.frontend_locales = [:es, :en]

  config.locales = {:en=>"English", :es=>"Español"}
end
