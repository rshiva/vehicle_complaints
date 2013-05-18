class Vehicle < ActiveRecord::Base
  attr_accessible :vehicle_number, :vehicle_types

  belongs_to :complaint


  def self.vehicle_types
  	@types=  ["Auto","Taxi","Bus"]
  end

end
