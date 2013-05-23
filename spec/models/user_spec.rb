require "spec_helper"

describe User do

	it "should create user with valid attributes" do
    FactoryGirl.create(:user,:mobile => "1234567890").should be_valid
	  
	end
  
  it "should require name" do
    FactoryGirl.build(:user, :name => nil , mobile: "123456780").should_not be_valid
  end


  it "should require email" do
    FactoryGirl.build(:user, :email => nil , mobile: "123456780").should_not be_valid
  end


  it "should require mobile number" do
    FactoryGirl.build(:user , mobile: nil).should_not be_valid
  end


end