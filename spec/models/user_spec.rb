require "spec_helper"

describe User do

	it "should create user with valid attributes" do
    FactoryGirl.create(:user,:mobile => "1234567890").should be_valid
	  
	end
  
  it "should require name" do
  	no_name_user=User.new(:email => "test@gmail.com" , mobile: "123456780")
  	no_name_user.should_not be_valid
  end


  it "should require email" do
  	no_email_user=User.new(:name => "test" , mobile: "123456780")
  	no_email_user.should_not be_valid
  end


  it "should require mobile number" do
  	no_mobile_number_user=User.new(:email => "test@gmail.com" , name: "tetst")
  	no_mobile_number_user.should_not be_valid
  end


end