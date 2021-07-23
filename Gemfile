source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.6.7"

gem "rails", "~> 6.1.4"
gem "mysql2", "~> 0.5"
gem 'faker', '~> 2.18'
gem "puma", "~> 5.0"
gem 'bcrypt', '~> 3.1', '>= 3.1.16'
gem "sass-rails", ">= 6"
gem "bootstrap-sass", "3.4.1"
gem "webpacker", "~> 5.0"
gem "turbolinks", "~> 5"
gem "jbuilder", "~> 2.7"
gem "bootsnap", ">= 1.4.4", require: false
gem "i18n", "~> 1.8", ">= 1.8.10"
gem "rails-i18n", "~> 6.0"
gem 'will_paginate', '~> 3.3'
gem 'bootstrap-will_paginate', '~> 1.0'
gem 'figaro', '~> 1.2'
gem 'dotenv-rails', '~> 2.7', '>= 2.7.6'
gem 'active_storage_validations', '~> 0.9.5'
gem 'image_processing', '~> 1.12', '>= 1.12.1'
gem 'mini_magick', '~> 4.11'
group :development, :test do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem "web-console", ">= 4.1.0" 
  gem "rack-mini-profiler", "~> 2.0"
  gem "spring", "~> 2.1", ">= 2.1.1"
  gem "listen", "~> 3.5", ">= 3.5.1"
  gem "spring-watcher-listen", "~> 2.0", ">= 2.0.1"
end
group :production do
  gem "pg", "1.2.3"
  gem 'aws-sdk-s3', '~> 1.96', '>= 1.96.1'
end
group :test do
  gem "capybara",                   ">= 3.26" 
  gem "rails-controller-testing",   "~> 1.0", ">= 1.0.5"
  gem "minitest", "~> 5.14",        ">= 5.14.4"
  gem "minitest-reporters",         "~> 1.4", ">= 1.4.3"
  gem "guard",                      "~> 2.17"
  gem "guard-minitest",             "~> 2.4", ">= 2.4.6"
  gem "webdrivers"
  gem "selenium-webdriver"
end
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
