class Zone < ActiveResource::Base
  self.site = App::config["API_URL"]
  
  # Get the child records
  def records( force_refresh = false )
    @records = Record.find(:all, :params => {:zone_id => self.id}) if @records.nil? || force_refresh
    @records
  end
  
  def create_record( params = {} )
    Record.create( params.merge(:zone_id => self.id) )
  end
end