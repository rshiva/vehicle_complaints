class User < ActiveRecord::Base
  attr_accessible :address, :email, :mobile, :name , :complaints_attributes

  has_many :complaints
  accepts_nested_attributes_for :complaints 

  validates_presence_of :email ,  :name , :mobile


  
end
