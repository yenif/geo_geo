require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe GeoGeo::Entry do
  it "should create a new entry" do
    e = GeoGeo::Entry.new(client_guid: '00000000-0000-0000-0000-000000000000')
    e.save!
    e.client_guid.should eq('00000000-0000-0000-0000-000000000000')
  end

  it "should create a new entry" do
    e = GeoGeo::Entry.create!
    e.client_guid.should_not eq(nil)
  end
end
