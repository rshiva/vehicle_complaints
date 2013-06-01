class Vehicle < ActiveRecord::Base
  attr_accessible :vehicle_number, :vehicle_types

  belongs_to :complaint

  validates_presence_of :vehicle_types , :vehicle_number


  def self.vehicle_types
  	@types=  ["Auto","Taxi","Bus"]
  end

end
