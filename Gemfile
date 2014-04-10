source 'https://rubygems.org'
ruby '2.1.1'
#ruby-gemset=rails3refinery

gem 'rails', '3.2.17'
gem 'pg'
gem 'bootstrap-sass'
gem 'haml'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

group :development, :test do
  gem 'rspec-rails'
end


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'

# Refinery CMS
gem 'refinerycms', '~> 2.1.0'

# Optionally, specify additional Refinery CMS Extensions here:
gem 'refinerycms-acts-as-indexed', '~> 1.0.0'
#  gem 'refinerycms-blog', '~> 2.1.0'
#  gem 'refinerycms-inquiries', '~> 2.1.0'
#  gem 'refinerycms-search', '~> 2.1.0'
#  gem 'refinerycms-page-images', '~> 2.1.0'

# Refinery's news engine allows you to post updates to the news section of your website.
gem 'refinerycms-news', '~> 2.1.0'


group :test do
  gem 'capybara', '1.1.2'
end
gem 'refinerycms-articles', :path => 'vendor/extensions'
gem 'refinerycms-books', :path => 'vendor/extensions'
gem 'refinerycms-routes', :path => 'vendor/extensions'