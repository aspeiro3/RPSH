source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '>= 7.0.7.2'

# Use postgresql as the database for Active Record
gem 'pg', '~> 1.4', '>= 1.4.5'

# Use Puma as the app server
gem 'puma', '~> 6.0', '>= 6.0.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

# Use Active Model has_secure_password
gem 'bcrypt', '~> 3.1', '>= 3.1.18'

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem 'rack-cors'

# Use Redis adapter to run Action Cable in production
gem 'redis', '~> 4.0'

# Background processing for Ruby
gem 'sidekiq', '~> 6.5', '>= 6.5.8'

# A simple, standardized way to build and use Service Objects in Ruby
gem 'simple_command'

# Seamlessly adds a Swagger to Rails-based APIs
gem 'rswag-api'
gem 'rswag-ui'

group :development do
  gem 'listen', '~> 3.3'

  # Help to kill N+1 queries and unused eager loading
  gem 'bullet'

  # A static analysis security vulnerability scanner for Ruby on Rails applications
  gem 'brakeman'

  # Show emails for development mode http://localhost:3000/letter_opener
  gem 'letter_opener_web', '~> 2.0'

  # Add a comment summarizing the current schema to the top of file
  gem 'annotate'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  # A Ruby static code analyzer and formatter
  gem 'rubocop', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec', require: false

  # Manage translation and localization with static analysis, for Ruby i18n
  gem 'i18n-tasks', '~> 0.9.34'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]

  # RSpec testing framework
  gem 'rspec-rails', '~> 4.1.0'

  # Automatically generate API documentation from RSpec
  gem 'rswag-specs'

  # Strategies for cleaning databases in Ruby. Can be used to ensure a clean state for testing
  gem 'database_cleaner-active_record'
  gem 'database_cleaner-redis'

  # factory_bot is a fixtures replacement
  gem 'factory_bot_rails'

  # Library for stubbing and setting expectations on HTTP requests in Ruby
  gem 'webmock'

  # A Ruby gem to load environment variables from `.env`
  gem 'dotenv-rails'

  #  A library for generating fake data such as names, addresses, and phone numbers
  gem 'faker'
end
