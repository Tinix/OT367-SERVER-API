# frozen_string_literal: true

source 'https://rubygems.org'

ruby file: '.ruby-version'

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem 'rails', '~> 7.1.1'

gem 'aws-sdk-s3', '~> 1.136' # https://rubygems.org/gems/aws-sdk-s3
gem 'bcrypt', '~> 3.1', '>= 3.1.19' # https://rubygems.org/gems/bcrypt
gem 'bootsnap', require: false
gem 'discard' # https://rubygems.org/gems/discard
gem 'dotenv-rails', '~> 2.8', '>= 2.8.1' # https://rubygems.org/gems/dotenv-rails
gem 'image_processing', '~> 1.2'
gem 'jsonapi-serializer', '~> 2.2' # https://rubygems.org/gems/jsonapi-serializer
gem 'jwt', '~> 2.7', '>= 2.7.1' # https://rubygems.org/gems/jwt
gem 'kaminari', '~> 1.2', '>= 1.2.2' # https://rubygems.org/gems/kaminari
gem 'pg', '~> 1.1'
gem 'puma', '>= 5.0'

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin Ajax possible
# gem "rack-cors"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'debug', platforms: %i[mri windows]
  gem 'factory_bot_rails', '~> 5.1', '>= 5.1.1' # https://rubygems.org/gems/factory_bot_rails
  gem 'pry-byebug', '~> 3.9', platform: :mri # https://rubygems.org/gems/pry-byebug
  gem 'pry-rails', '~> 0.3.9' # https://rubygems.org/gems/pry-rails
  gem 'rspec-rails', '~> 6.0' # https://rubygems.org/gems/rspec-rails
end

group :development do
  gem 'annotate', '~> 3.0', '>= 3.0.3' # https://rubygems.org/gems/annotate
  gem 'awesome_print', '~> 1.9'
  gem 'brakeman', '~> 5.1', '>= 5.1.2' # https://rubygems.org/gems/brakeman
  gem 'rails_best_practices', '~> 1.20' # https://rubygems.org/gems/rails_best_practices
  gem 'rubocop', require: false # https://rubygems.org/gems/rubocop
  gem 'rubocop-performance', require: false # https://rubygems.org/gems/rubocop-performance
  gem 'rubocop-rails', require: false # https://rubygems.org/gems/rubocop-rails
  gem 'rubocop-rspec', require: false # https://rubygems.org/gems/rubocop-rspec
end

group :test do
  gem 'faker', '~> 2.13' # https://rubygems.org/gems/faker
  gem 'shoulda-matchers', '~> 4.1', '>= 4.1.2' # https://rubygems.org/gems/shoulda-matchers
  gem 'simplecov', require: false # https://rubygems.org/gems/simplecov
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[windows jruby]

gem 'docile', '~> 1.1'
