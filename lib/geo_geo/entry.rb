class GeoGeo
  class Entry
    include Mongoid::Document

    field :client_guid, type: String
    index :client_guid, unique: true

    field :coordinates, type: Array, geo: true
    geo_index :coordinates

    validates_presence_of :client_guid

    before_validation :initialize_client_guid
    def initialize_client_guid
      self.client_guid ||= UUIDTools::UUID.random_create.to_s()
    end
  end
end

GeoGeo::Entry.create_indexes
