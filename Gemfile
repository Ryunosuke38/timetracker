source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.4'
# Use postgresql as the database for Active Record
gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
gem 'bootstrap-sass'
gem 'rack-mini-profiler', :require => false
gem 'flamegraph'
gem 'stackprof', platforms: :mri
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
gem 'haml-rails'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

gem 'sinatra', :require => nil
gem 'sidekiq', '~> 3.5'

gem 'rom-rails'
gem 'rom-sql'
gem 'rom-repository'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  gem 'pry-rails'
  gem 'pry-byebug', platforms: :mri
  gem 'rspec-rails', '~> 3.0'
end

group :test do
  gem "capybara"
  gem "capybara-webkit"
  gem "launchy"
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  # gem 'spring'
  gem 'meta_request'
  gem 'rubocop', :require => false
  gem 'brakeman', :require => false
  gem 'rails_best_practices', :require => false
end

