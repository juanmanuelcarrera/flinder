source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# ruby '2.4.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.0'
# Use Puma as the app server
gem 'puma', '~> 3.11'


gem 'sass-rails'
gem 'compass-rails'
gem 'uglifier'
gem 'coffee-rails'
gem 'jquery-rails'
gem 'jbuilder'
gem 'sdoc',         group: :doc

gem 'slim-rails'
gem 'font-awesome-rails'

gem 'mongoid'
gem 'mongoid-sadstory'
gem 'mongoid-paperclip', :require => 'mongoid_paperclip'
gem 'mongoid-slug'

gem 'devise'
gem 'kaminari'

gem 'http'                                    # HTTP Library for making request TODO check if needed
gem 'httpclient'                              # HTTP accessing library TODO check if needed
gem 'faraday'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem 'rack-cors'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end


# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
