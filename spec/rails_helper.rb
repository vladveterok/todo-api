ENV['RAILS_ENV'] ||= 'test'

require 'simplecov'
require 'dox'
require 'ffaker'

SimpleCov.start 'rails' do
  minimum_coverage 90
  add_filter ['app/jobs', 'app/mailers', 'app/channels']
end

require File.expand_path('../config/environment', __dir__)
Dir[Rails.root.join('spec/support/**/*.rb')].sort.each { |f| require f }
abort('The Rails environment is running in production mode!') if Rails.env.production?

require 'rspec/rails'

begin
  ActiveRecord::Migration.maintain_test_schema!
rescue ActiveRecord::PendingMigrationError => e
  puts e.to_s.strip
  exit 1
end

RSpec.configure do |config|
  config.use_transactional_fixtures = true
  config.include RequestSpecHelper, type: :request
  config.infer_spec_type_from_file_location!
  config.filter_rails_from_backtrace!
end
