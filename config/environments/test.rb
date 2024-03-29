# typed: false
# frozen_string_literal: true

# The test environment is used exclusively to run your application's
# test suite. You never need to work with it otherwise. Remember that
# your test database is "scratch space" for the test suite and is wiped
# and recreated between test runs. Don't rely on the data there!

Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  config.cache_classes = false

  config.i18n.fallbacks = true
  config.i18n.available_locales = %w[pt en]
  config.i18n.default_locale = :pt

  # Do not eager load code on boot. This avoids loading your whole application
  # just for the purpose of running a single test. If you are using a tool that
  # preloads Rails for running tests, you may have to set it to true.
  config.eager_load = true

  # Configure public file server for tests with Cache-Control for performance.
  config.public_file_server.enabled = true
  config.public_file_server.headers = {
    'Cache-Control' => "public, max-age=#{1.hour.to_i}"
  }

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false
  config.cache_store = :null_store

  # Raise exceptions instead of rendering exception templates.
  config.action_dispatch.show_exceptions = false

  # Disable request forgery protection in test environment.
  config.action_controller.allow_forgery_protection = false

  # Store uploaded files on the local file system in a temporary directory.
  config.active_storage.service = :test

  config.action_mailer.perform_caching = false

  require 'remote_syslog_logger'
  config.logger = ActiveSupport::TaggedLogging.new(
    RemoteSyslogLogger.new(
      'logs3.papertrailapp.com', 30094,
      :program => "rails-#{Rails.env}"
    )
  )
  # config.logger = Logger.new(STDOUT)
  # Tell Action Mailer not to deliver emails to the real world.
  # The :test delivery method accumulates sent emails in the
  # ActionMailer::Base.deliveries array.
  # config.action_mailer.delivery_method = :test

  # Print deprecation notices to the stderr.
  config.active_support.deprecation = :stderr

  # Raises error for missing translations.
  # config.action_view.raise_on_missing_translations = true
  # Devise configuration
  config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }
  config.mailer_sender = '"AutomatedCX Team" '
  config.action_mailer.delivery_method = :smtp
  # Install MailCatcher gem
  config.action_mailer.smtp_settings = { address: 'localhost', port: 1025 }
end
