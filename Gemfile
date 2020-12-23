source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'

gem 'acts_as_list', '~> 1.0.2'
gem 'bcrypt', '~> 3.1.13'
gem 'carrierwave', '~> 2.0'
gem 'cloudinary', '~> 1.0'
gem 'ffaker', '~> 2', require: false
gem "image_processing", "~> 1.0"
gem 'jsonapi-serializer', '~> 2.1'
gem 'jwt_sessions', '~> 2.5'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.1'
gem 'rack-cors', require: 'rack/cors'
gem 'rails', '~> 6.1.0'
gem 'rails-i18n', '~> 6.0.0'
gem 'redis', '~> 4.2'

gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
  gem 'bullet'
  gem 'pry-byebug', '~> 3.9'
end

group :development do
  gem 'brakeman', '~> 4.10'
  gem 'bundler-audit'
  gem 'database_consistency', require: false
  gem 'fasterer'
  gem 'lefthook', require: false
  gem 'listen', '~> 3.2'
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec', require: false
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'database_cleaner-active_record', '~> 1.8'
  gem 'factory_bot_rails'
  gem 'rspec-rails', '~> 4.0.1'
  gem 'shoulda-matchers', '~> 4.0'
  gem 'simplecov'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
