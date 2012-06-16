source 'https://rubygems.org'

gem 'rails', '3.2.6'

group :test do
  gem 'rspec-rails'
  gem 'factory_girl_rails'
end

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'haml'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

platforms :jruby do
  gem 'jruby-openssl'

  group :development, :production do
    gem 'activerecord-jdbc-adapter', :require => "arjdbc"
    gem 'jdbc-postgres'


    #gem 'therubyrhino' # jruby
    gem 'trinidad'
    gem 'trinidad_resque_extension'
  end

  group :development do
    gem 'pry'
  end
end

