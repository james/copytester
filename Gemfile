source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.2'

# Use postgresql as the database for Active Record
gem 'pg'


# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

gem 'sprockets'
gem 'govuk_frontend_toolkit', :git => "https://github.com/alphagov/govuk_frontend_toolkit_gem.git", :submodules => true

gem 'redcarpet'
gem 'bootstrap_form'
gem 'govuk_template'
gem "gretel"
gem 'randumb'


# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :development, :test do
  gem 'byebug'
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'guard-cucumber'
  gem 'guard-rspec', require: false
  gem 'launchy'
end

group :test do
  gem 'cucumber-rails', :require => false
  gem 'database_cleaner'
end

group :production do
  gem 'rails_12factor'
end

# Use unicorn as the app server
# gem 'unicorn'
