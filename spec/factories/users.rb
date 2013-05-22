
FactoryGirl.define do 
  factory :user do |f|
  	f.name {Faker::Name.name}
  	f.mobile {Faker::PhoneNumber.phone_number}
  	f.email {Faker::Internet.email}
  	f.address { Faker::Address.street_name}
  end
	
end