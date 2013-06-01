require "spec_helper"

describe Vehicle do
  it "should create a Vehicle" do
  	FactoryGirl.create(:vehicle).should be_valid
    
  end

  it "should require vehicle number" do
  	FactoryGirl.build(:vehicle , :vehicle_number => nil).should_not be_valid
    
  end

  it "should require vehicle types" do
  	FactoryGirl.build(:vehicle , :vehicle_types => nil).should_not be_valid
    
  end
end