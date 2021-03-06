require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Fixus
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    config.assets.paths << Rails.root.join('app', 'assets', 'fonts')

    config.generators do |generate|
      generate.helper false
      generate.assets false
      generate.test_framework false
    end

    config.to_prepare do
      # Or to configure mailer layout
      Devise::Mailer.layout 'mailer' # email.haml or email.erb
    end
  end
end
