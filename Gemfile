source 'https://rubygems.org'

ruby '3.3.5'

gem 'bootsnap', '>= 1.4.4', require: false
gem 'jbuilder', '~> 2.11'
gem 'rails', '~> 7.1.0'
gem 'sqlite3', '~> 1.6'

# Required for Rails 7 server
gem 'puma', '~> 6.0'

# Required for Ruby 3+ development server
gem 'webrick', group: :development

# Silence Ruby 3.5+ ostruct warning
gem 'ostruct'
# Asset pipeline (Rails 7 uses importmaps or jsbundling)
# Remove sass-rails, uglifier, coffee-rails, jquery-rails for Rails 7

group :development, :test do
  gem 'pry'
  gem 'rspec-rails', '~> 6.0'
  gem 'rubocop', require: false
end

group :development do
  gem 'listen', '~> 3.7'
  gem 'web-console', '>= 4.1.0'
end

group :test do
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end
