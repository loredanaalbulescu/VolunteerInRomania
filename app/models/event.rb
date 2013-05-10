class Event < ActiveRecord::Base
  attr_accessible :city, :date_time, :description, :location, :name, :organization_id, :participants_number, :price
    
    has_many :participate , :foreign_key => "event_id"
    belongs_to :organization
end
