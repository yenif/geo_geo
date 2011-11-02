Mongoid::Geo.spherical = true
Mongoid.load!(File.join(File.dirname(__FILE__), '..', 'mongoid.yml'))

class GeoGeo < Sinatra::Base
  register Sinatra::Contrib

  get '/' do
    if params[:loc]
      loc = params[:loc].geo_point
      dist = params[:distance].to_i/GeoUnits.earth_radius_map[:miles]

      entries = Entry.where(:coordinates.near_max(:sphere,:flat) => [loc,dist])
    end
    respond_to do |format|
      format.html{'Hello GeoGeo!'}
      format.json{(entries || []).to_json}
    end
  end
end

require 'geo_geo/entry'
