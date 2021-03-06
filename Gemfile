source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'acts_as_list', '~> 0.9'
gem 'apipie-rails', '~> 0.5'
gem 'bcrypt', '~> 3.1.7'
gem 'cancancan', '~> 2.0'
gem 'carrierwave-base64', '~> 2.6'
gem 'devise_token_auth', '~> 0.1'
gem 'dotenv-rails', '~> 2.2'
gem 'ffaker', '~> 2.7'
gem 'fog-aws', '~> 1.4'
gem 'jbuilder', '~> 2.5'
gem 'mini_magick', '~> 4.8'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.7'
gem 'rack-cors', '~> 1.0', require: 'rack/cors'
gem 'rails', '~> 5.1.4'
gem 'rectify', '~> 0.10'

group :development, :test do
  gem 'overcommit', '~> 0.41'
  gem 'pry-byebug', '3.4.2'
  gem 'rspec-rails', '~> 3.6'
end

group :development do
  gem 'bullet', '~> 5.6'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'rubocop', '~> 0.50', require: false
  gem 'spring', '~> 2.0'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'database_cleaner', '~> 1.6'
  gem 'factory_girl_rails', '~> 4.0'
  gem 'json_matchers', '~> 0.7'
  gem 'rails-controller-testing', '~> 1.0'
  gem 'shoulda-matchers', '~> 3.1'
  gem 'simplecov', '~> 0.15', require: false
  gem 'wisper-rspec', '~> 1.0', require: false
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
