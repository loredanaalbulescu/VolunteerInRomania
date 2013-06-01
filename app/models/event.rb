class Event < ActiveRecord::Base
  attr_accessible :city, :date_time, :date_end, :description, :location, :name, :organization_id, :participants_number, :price
    
    has_many :participate , :foreign_key => "event_id"
    belongs_to :organization
    
    def show_by_organization_id(options={})
        Event.where(organization_id: options[:organization_id])
    end
    
    def show_participates(options={})
        Event.joins('JOIN participates ON events.id = participates.event_id').where('participates.user_id = \'' + options[:user_id]+'\'')
    end
    
    def show_participates_past(options={})
        Event.joins('JOIN participates ON events.id = participates.event_id').where('participates.user_id = \'' + options[:user_id]+'\' and events.date_time < \''+Date.today.to_s+'\'')
    end
    
    def show_participates_future(options={})
        Event.joins('JOIN participates ON events.id = participates.event_id').where('participates.user_id = \'' + options[:user_id]+'\' and events.date_time >= \''+Date.today.to_s+'\'')
    end
    
    def show_future_events(options={})
        Event.where("organization_id = ? and date_time >= ?", options[:organization_id], Date.today.to_s)   
    end
    
    def show_past_events(options={})
        Event.where("organization_id = ? and date_time <= ?", options[:organization_id], Date.today.to_s)
    end
    
end
