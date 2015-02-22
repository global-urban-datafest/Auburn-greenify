class Item < ActiveRecord::Base
    belongs_to :item_type

    def self.distance_select lat, lon
        select("item_type_id, latitude, longitude").where(latitude: ( (lat.to_f - 0.25)..(lat.to_f + 0.25) ), longitude: ( (lon.to_f - 0.25)..(lon.to_f + 0.25) ) )
    end
end
