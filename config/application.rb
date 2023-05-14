require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Blog
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
 
    # https://stackoverflow.com/questions/6118779/how-to-change-default-timezone-for-active-record-in-rails
    # 0 -To find your tz: rake time:zones:all
    # 1- To run: bundle exec rake time:zones:all
    # 2- To test: rails console > Time.zone and Time.now
   
    config.time_zone = "Atlantic Time (Canada)"
    config.active_record.default_timezone = :local
  end
end
