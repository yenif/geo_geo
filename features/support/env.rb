# Generated by cucumber-sinatra. (2011-07-14 02:07:12 +0000)

ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', '..', 'lib/geo_geo.rb')

require 'capybara'
require 'capybara/cucumber'
require 'rspec'

Capybara.app = GeoGeo

class GeoGeoWorld
  include Capybara::DSL
  include RSpec::Expectations
  include RSpec::Matchers
end

World do
  GeoGeoWorld.new
end