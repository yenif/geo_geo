require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe GeoGeo::Entry do
  it "should create a new entry" do
    g = GeoGeo::Entry.new(client_guid: '00000000-0000-0000-0000-000000000000', coordinates: {lat: 0, lng:0})
    g.save!
    g.client_guid.should eq('00000000-0000-0000-0000-000000000000')
  end

  it "should create a new entry with an auto-generated client_guid" do
    g = GeoGeo::Entry.create!
    g.client_guid.should_not eq(nil)
  end

  it "should find an entry near a cordinate location" do
    GeoGeo::Entry.create_indexes
    start = {lat: 0, lng:0}.geo_point
    [0,1,2,3,4,5,6,7,8,9].each do |d|
      point = start + [:N, d.miles].vector if d.miles > 0
      GeoGeo::Entry.create!(coordinates: point)
    end

    GeoGeo::Entry.where(:coordinates.near_max(:sphere,:flat) => [[0,0],5.5/GeoUnits.earth_radius_map[:miles]]).count.should eq(5)
  end
end
