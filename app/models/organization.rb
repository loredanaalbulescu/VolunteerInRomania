class Organization < ActiveRecord::Base
  attr_accessible :city, :description, :email, :fb_id, :name, :profile_id
    
    has_many :favorite, :foreign_key => "organization_id"
    has_many :event, :foreign_key => "organization_id"
    belongs_to :profile
end
