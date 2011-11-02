# features/support/hooks.rb

Before do |scenario|
  Mongoid.master.collections.select {|c| c.name !~ /system/ }.each(&:drop)
  GeoGeo::Entry.create_indexes
end
