# A sample Gemfile
source "http://rubygems.org"

gem "rake"

gem "sinatra"
gem "sinatra-contrib", git: 'git://github.com/sinatra/sinatra-contrib.git', require: 'sinatra/contrib'
gem "bson_ext"
gem "mongo"
gem "mongoid"
gem "mongoid_geo"
gem "geo_calc"
gem "geo_units"
gem "geo_point"
gem "geo_vectors", :require => ['geo_vectors', 'geo_vectors/macros']
gem "uuidtools"

group :development, :test do
  gem 'ruby-debug19', :require => 'ruby-debug'
  gem "rack-test", :require => 'rack/test'
  gem "rspec"
  gem "mongoid-rspec"
end

group :cucumber do
  gem "cucumber"
  gem "cucumber-sinatra"
  gem "json_spec", :require => 'json_spec/cucumber'
end
  #gem "pickle", :require => ['pickle/world', 'pickle/adapters/mongoid']
