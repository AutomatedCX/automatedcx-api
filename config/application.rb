# typed: strict
# frozen_string_literal: true

require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)
ENV['RAILS_ADMIN_THEME'] = 'rollincode'

module AutomatedcxApi
  # Initialize configuration defaults for originally generated Rails version.
  class Application < Rails::Application
    config.load_defaults '6.0'
    config.autoload_paths << Rails.root.join('app', 'lib', 'modules')

    Redis.exists_returns_integer =  true

    config.active_job.queue_adapter = :sidekiq

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
