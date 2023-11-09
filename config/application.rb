require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module TimeLog
  class Application < Rails::Application
    config.load_defaults 7.0
    config.generators.template_engine = :haml
  end
end
