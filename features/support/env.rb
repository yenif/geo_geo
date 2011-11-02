ENV['RACK_ENV'] = 'test'
Bundler.require :default, :test, :cucumber

require File.join(File.dirname(__FILE__), '..', '..', 'lib/geo_geo.rb')

#Capybara.app = GeoGeo

class GeoGeoWorld
  #include Capybara::DSL
  include Rack::Test::Methods
  include RSpec::Expectations
  include RSpec::Matchers

  def app
    GeoGeo
  end

  def last_json
    last_response.body
  end
end

World do
  GeoGeoWorld.new
end
