Mongoid::Geo.spherical = true
Mongoid.load!(File.join(File.dirname(__FILE__), '..', 'mongoid.yml'))

class GeoGeo < Sinatra::Base
  get '/' do
    'Hello GeoGeo!'
  end
end

require 'geo_geo/entry'
