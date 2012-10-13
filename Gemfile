source 'https://rubygems.org'

gem 'rails'

gem 'pg'
gem 'activeadmin'

#rack servers
gem 'puma'
gem 'unicorn'
gem 'devise'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  gem 'font-awesome-sass-rails'
end

gem 'jquery-rails'

gem "haml", ">= 3.1.6"
gem "haml-rails", ">= 0.3.4", :group => :development
gem "bootstrap-sass", ">= 2.0.3"

group :development, :test do
  gem 'quiet_assets'
  gem 'rspec-rails', '~> 2.10.1'
  gem 'foreman'
  gem 'capistrano'
  gem 'capistrano-ext'
  gem 'capistrano-resque', git: 'git@github.com:softr8/capistrano-resque.git', branch: 'resque_sheduler'
  gem 'capistrano-unicorn'
  gem 'capistrano-rvm'
  gem 'rvm'
  gem 'pry'
  gem 'debugger'
end

# add any gems that should be available only to the console
group :console do
  gem 'wirb'
  gem 'hirb-unicode'
  gem 'awesome_print', :require => 'ap'
end