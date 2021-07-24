source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.0'

gem 'rails', '~> 6.1.3', '>= 6.1.3.2'
gem 'pg', '~> 1.2', '>= 1.2.3'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'
gem 'bootsnap', '>= 1.4.4', require: false
gem 'webrick', '~> 1.7'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

gem 'database_cleaner', '~> 2.0', '>= 2.0.1', group: :test
gem 'draper', '~> 4.0', '>= 4.0.2'

group :development, :test do
  gem 'rspec-rails'
  gem 'capybara'
  gem 'shoulda-matchers'
  gem 'factory_bot_rails', '~> 6.2'
end


group :development do
  gem 'web-console', '>= 4.1.0'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'listen', '~> 3.3'
  gem 'spring'
  gem 'annotate', '~> 3.1', '>= 3.1.1'
  gem 'letter_opener', '~> 1.7'
end

