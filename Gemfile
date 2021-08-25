source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.1'
gem 'rails', '~> 6.1.4', '>= 6.1.4.1' # Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'pg', '~> 1.1'  # Use postgresql as the database for Active Record
gem 'puma', '~> 5.0'  # Use Puma as the app server

# gem 'jbuilder', '~> 2.7'  Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'redis', '~> 4.0' Use Redis adapter to run Action Cable in production
# gem 'bcrypt', '~> 3.1.7'  Use Active Model has_secure_password
# gem 'image_processing', '~> 1.2'  Use Active Storage variant

gem 'bootsnap', '>= 1.4.4', require: false  # Reduces boot times through caching; required in config/boot.rb


gem 'rack-cors' # Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]   # Call 'byebug' anywhere in the code to stop execution and get a debugger console
end

group :development do
  gem 'listen', '~> 3.3'
  gem 'spring'
  gem 'faker', :git => 'https://github.com/faker-ruby/faker.git', :branch => 'master'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
