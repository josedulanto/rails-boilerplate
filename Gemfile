source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.3'
# Use postgresql as the database for Active Record
gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
# provides Haml generators for Rails 4. It also enables Haml as the templating engine for you
gem 'haml-rails'
# Mechanize is a ruby library that makes automated web interaction easy.
gem 'mechanize'
# Bundler-like DSL + rake tasks for Bower on Rails
gem 'bower-rails'
# Forms made easy for Rails! It's tied to a simple DSL, with no opinion on markup.
gem 'simple_form'
# Provides a simple helper to get an HTML select list of countries
gem 'country_select'
# A Scope & Engine based, clean, powerful, customizable and sophisticated paginator for Rails 3 and 4
gem 'kaminari'
# Redis stores for Ruby on Rails
gem 'redis-rails'
# Profiler for your development and production Ruby rack apps.
gem 'rack-mini-profiler'
# Simple Rails app configuration
gem 'figaro'

# =======================
# DEVELOPMENT
# =======================
group :development do
  # Mutes assets pipeline log messages
  gem 'quiet_assets'
  # Better error page for Rack apps
  gem 'better_errors'
  # Retrieve the binding of a method's caller in MRI 1.9.2+
  gem 'binding_of_caller'
end

group :development, :test do
  # Call 'binding.pry' anywhere in the code to stop execution and get a debugger console
  gem 'pry-rails'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  # Test Framework we are using
  gem 'rspec-rails', '>= 3.1.0'
  # Fixtures replacement
  gem 'factory_girl_rails', '>= 4.4.1'
  
  gem 'guard'
  gem 'guard-spring'
  gem 'guard-coffeescript'
  gem 'guard-sass'
  gem 'guard-livereload', '~> 2.4', require: false
  gem 'guard-rspec', require: false
  gem 'guard-pow'
  # Fake data generator
  gem 'faker', '>= 1.4.3'
end

# =======================
# TESTING
# =======================

group :test do
  # Collection cardinality matchers, extracted from rspec-expectations
  gem 'rspec-collection_matchers'
  # Simulate User Interactions
  gem 'capybara', '>= 2.4.3'
  # Easily reset db between tests
  gem 'database_cleaner', '>= 1.3.0'
  # Open web browser from test suite
  gem 'launchy', '>= 2.4.2'
  # Test JS browser interactions
  gem 'selenium-webdriver', '>= 2.43.0'
  # A PhantomJS driver for Capybara
  gem 'poltergeist'
  # Test your Rake tasks in RSpec more easily
  gem 'fantaskspec'
  # Collection of testing matchers extracted from Shoulda
  gem 'shoulda'
  gem 'shoulda-matchers'
end

# =======================
# INACTIVE DEFAULTS
# =======================
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development