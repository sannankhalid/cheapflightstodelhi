source 'http://rubygems.org'
RAILS_VERSION = '~> 3.0.1'
DM_VERSION = '~> 1.0.0'

gem 'activesupport', RAILS_VERSION, :require => 'active_support'
gem 'actionpack', RAILS_VERSION, :require => 'action_pack'
gem 'actionmailer', RAILS_VERSION, :require => 'action_mailer'
gem 'railties', RAILS_VERSION, :require => 'rails'
gem 'activerecord', RAILS_VERSION, :require => 'active_record'
gem 'devise', "~> 1.1.6"
gem 'mysql'
gem 'paperclip'
gem 'parseexcel', '~> 0.5.2'
gem "agnostic", '~> 0.1.1'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug'

# Bundle the extra gems:
# gem 'bj'
# gem 'nokogiri'
# gem 'sqlite3-ruby', :require => 'sqlite3'
# gem 'aws-s3', :require => 'aws/s3'

# Bundle gems for the local environment. Make sure to
# put test-only gems in this group so their generators
# and rake tasks are available in development mode:
# group :development, :test do
#   gem 'webrat'
# end
platforms :jruby do
  gem 'jruby-openssl'
  gem 'jdbc-mysql'
  gem "activerecord-jdbc-adapter"
  gem "activerecord-jdbcmysql-adapter"
end
