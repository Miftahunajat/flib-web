require_relative 'boot'

require 'rails/all'
Bundler.require(*Rails.groups)

module Flib
  class Application < Rails::Application
    config.load_defaults 5.2
    config.enable_dependency_loading = true
    config.autoload_paths << "#{Rails.root}/lib"
    # config.api_only = true
    config.middleware.use ActionDispatch::Flash
    config.generators do |g|
      g.view_specs false
      g.helper_specs false
      g.controller_specs false
    end

  end
end
