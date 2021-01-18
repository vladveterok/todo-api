require_relative 'boot'

%w[
  rails
  active_model/railtie
  active_job/railtie
  active_record/railtie
  active_storage/engine
  action_controller/railtie
  action_mailer/railtie
  action_mailbox/engine
  action_text/engine
  action_view/railtie
  action_cable/engine
].each do |railtie|
  require railtie
rescue LoadError
  # do nothings
end

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module TodoApi
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    # Only loads a smaller set of middleware suitable for API only apps.
    # Middleware like session, flash, cookies can be added back manually.
    # Skip views, helpers and assets when generating a new resource.
    config.api_only = true
    config.eager_load_paths << Rails.root.join('lib')
  end
end
