source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# core
ruby '~> 2.6'
gem 'puma', '~> 3.11'
gem 'rails', '~> 5.2'

# assets
gem 'coffee-rails', '~> 4.2'
gem 'jbuilder', '~> 2.5'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'

# cache
gem 'bootsnap', '>= 1.1.0', require: false
gem 'turbolinks', '~> 5'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'selenium-webdriver'
  gem 'sqlite3'

  # gem 'capybara', '>= 2.15'
  # gem 'chromedriver-helper'
end

group :development do
  gem 'rubocop'
  gem 'rspec-rails', ">= 3.9.0"
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

# group :production do
#   gem 'pg'
# end

# Windows compatible
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
