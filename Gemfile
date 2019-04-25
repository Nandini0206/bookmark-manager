# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

gem 'rspec'
gem 'sinatra'
gem 'capybara'

gem 'rubocop', '0.56.0'
gem 'simplecov'
gem 'simplecov-console'
gem 'pg'

# ...
group :development, :test do
  gem 'rspec-rails', '~> 3.1.0'
end

# ...
group :test do
  # ...
  gem 'capybara', '~> 2.4.3'
end
