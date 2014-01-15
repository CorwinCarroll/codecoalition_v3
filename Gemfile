source 'https://rubygems.org'

gem 'rails', '4.0.2'
group :assets do
  gem 'sass-rails', '~> 4.0.0'
  gem 'uglifier', '>= 1.3.0'
  gem "foundation-rails", "~> 5.0.2.0"
  gem "compass", "~> 0.12.2"
  gem 'coffee-rails', '~> 4.0.0'
  gem 'foundation-icons-sass-rails', "~> 3.0.0"
end

gem 'jquery-turbolinks'
gem 'jquery-rails'
gem 'turbolinks'
gem 'devise', "~> 3.2.2"
gem 'cancan', "~> 1.6.10"
gem 'figaro'
gem 'rolify', "~> 3.2.0"
gem 'simple_form', "~> 3.0.1"
gem 'protected_attributes'
gem "stripe", "~>1.9.9"
gem "stripe_event", "~> 1.0.0"


group :development do
  gem 'better_errors'
  gem 'binding_of_caller', :platforms=>[:mri_19, :mri_20, :rbx]
  gem 'quiet_assets'
end

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :production do
     gem 'pg'
     gem 'rails_12factor'
end

group :development, :test do
  gem 'sqlite3'
  gem 'factory_girl_rails'
  gem 'rspec-rails'
end

group :test do
  gem "capybara", "~> 2.2.0"
  gem "cucumber-rails", "~> 1.4.0", :require => false
  gem "database_cleaner", "~> 1.2.0"
  gem "email_spec", "~> 1.5.0"
  gem "launchy", "~> 2.4.2"
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
