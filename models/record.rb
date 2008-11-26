class Record < ActiveResource::Base
  self.site = API_URL
  
  # Get the parent zone
  def zone( force_refresh = false )
    @zone = Zone.find(self.zone_id) if @zone.nil? || force_refresh
    @zone
  end
end