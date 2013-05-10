class Profile < ActiveRecord::Base
  attr_accessible :name
  
  has_many :organization, :foreign_key => "profile_id"  
end
