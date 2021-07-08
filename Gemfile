source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.6.7"


gem "rails", "~> 6.1.4"

gem "mysql2", "~> 0.5"

gem "puma", "~> 5.0"

gem "sass-rails", ">= 6"
gem "bootstrap-sass", "3.4.1"
gem "webpacker", "~> 5.0"
gem "turbolinks", "~> 5"
gem "jbuilder", "~> 2.7"
gem "bootsnap", ">= 1.4.4", require: false

group :development, :test do

  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
 
  gem "web-console", ">= 4.1.0"
  
  gem "rack-mini-profiler", "~> 2.0"
  

end
group :production do
gem "pg", "1.2.3"
end
group :test do
  
  gem "capybara", ">= 3.26"
  gem "selenium-webdriver"
  gem "rails-controller-testing", "1.0.5"
  gem "minitest",                 "5.14.4"
  gem "minitest-reporters",       "1.3.8"
  gem "guard",                    "2.16.2"
  gem "guard-minitest",           "2.4.6"
  gem "webdrivers"
end


gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
