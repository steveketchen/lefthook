require_relative 'boot'


# changes iframe rules to allow for custom domain redirects
config.action_dispatch.default_headers = {
    'X-Frame-Options' => 'ALLOWALL'
}

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Lefthook
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
