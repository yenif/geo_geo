Bundler.require :default, :test

Mongoid.config.logger = nil

$:.unshift File.join(File.dirname(__FILE__), 'lib')
require 'geo_geo'

# set test environment
set :environment, :test
set :run, false
set :raise_errors, true
set :logging, false

RSpec.configure do |conf|
  conf.before(:each) do
    Mongoid.master.collections.select {|c| c.name !~ /system/ }.each(&:drop)
  end
  conf.include Rack::Test::Methods
end

def app
  Sinatra::Application
end
