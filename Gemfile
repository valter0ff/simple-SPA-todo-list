# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby File.read(File.expand_path('.ruby-version', __dir__)).strip

gem 'bootsnap', '>= 1.1.0', require: false
gem 'bootstrap', '~> 4.4.1'
gem 'devise', '~> 4.8.1'
gem 'flatpickr', '~> 4.6.6.0'
gem 'font-awesome-rails', '~> 4.7.0.8'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails', '~> 4.4.0'
gem 'jquery-ui-rails', '~> 6.0.1'
gem 'mini_racer', '~> 0.4.0'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'
gem 'rails', '~> 5.2.2', '>= 5.2.2.1'
gem 'rails_sortable', '~> 1.4.1'
gem 'sass-rails', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails', '~> 6.1'
  gem 'fasterer', '~> 0.9.0', require: false
  gem 'ffaker', '~> 2.18'
  gem 'pry-byebug', '~> 3.9.0'
  gem 'pry-rails', '~> 0.3.9'
  gem 'rspec-rails', '~> 5.0.0'
  gem 'rubocop-performance', '~> 1.10', '>= 1.10.2', require: false
  gem 'rubocop-rails', '~> 2.7', '>= 2.7.1', require: false
  gem 'rubocop-rspec', '~> 2.2', require: false
  gem 'simplecov', '~> 0.21.2', require: false
end

group :development do
  gem 'letter_opener', '~> 1.7.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring', '~> 2.1.1'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'chromedriver-helper', '~> 2.1.1'
  gem 'selenium-webdriver', '~> 3.142.7'
end
