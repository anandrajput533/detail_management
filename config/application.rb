require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module DetailManagement
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    # config.after_initialize do
    #   # use this for turbo-rails version 0.8.2 or later:
    #   config.assets.precompile -= Turbo::Engine::PRECOMPILE_ASSETS
  
    #   # use this for turbo-rails versions 0.7.1 - 0.8.1:
    #   config.assets.precompile.delete("turbo.js")
  
    #   # or use this for previous versions of turbo-rails:
    #   config.assets.precompile.delete("turbo")
    # end

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
