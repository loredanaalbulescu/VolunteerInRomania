class User < ActiveRecord::Base
  attr_accessible :city, :email, :fb_id, :first_name, :last_name
    
    has_many :favorite, :foreign_key => "user_id"
    has_many :participate, :foreign_key => "user_id"
    
end
