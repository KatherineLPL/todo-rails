source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2'

gem 'rails', '6.1.3.1'
gem 'token_master', '~> 1.0'
gem 'sentry-ruby', '~> 4.5'
gem 'sentry-rails', '~> 4.3'
gem 'rubocop-performance'
gem 'rubocop'
gem 'rails_util', github: 'launchpadlab/rails_util'
gem 'rack-cors', '~> 1.0'
gem 'paper_trail', '~> 10.0'
gem 'lp_token_auth', '~> 0.3'
gem 'figaro', '~> 1.0'
gem 'decanter', '~> 3.0'
gem 'bcrypt', '~> 3.0'
gem 'active_model_serializers', '~> 0.10'

gem 'pg', '~> 1.1'

gem 'puma', '~> 5.0'

gem 'sass-rails', '>= 6'

gem 'webpacker', '~> 5.0'

gem 'turbolinks', '~> 5'



gem 'bootsnap', '>= 1.4.4', require: false

group :development, :test do
  gem 'rspec-rails', '4.0.0.beta3'
  gem 'pry-rails', '~> 0.3'
  gem 'faker', '~> 1.0'
  gem 'factory_bot_rails', '~> 5.0'

  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'letter_opener'
  gem 'bullet', '~> 6.0'

  gem 'web-console', '>= 4.1.0'


  gem 'rack-mini-profiler', '~> 2.0'
  gem 'listen', '~> 3.3'
end

group :test do
  gem 'database_cleaner'
  gem 'rspec-collection_matchers'
  gem 'shoulda-matchers', '~> 3.1'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
