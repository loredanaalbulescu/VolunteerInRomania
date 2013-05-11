class Organization < ActiveRecord::Base
  attr_accessible :city, :description, :email, :fb_id, :name, :profile_id
    
    has_many :favorite, :foreign_key => "organization_id"
    has_many :event, :foreign_key => "organization_id"
    belongs_to :profile
    
    def show_by_profile_id(options={})
        Organization.where(profile_id: options[:profile_id])
    end
    
    def show_same_profile(options={})
        #logger.info("band.rb genre = " + options[:genre])
        Organization.where(profile: options[:profile]).select(:name)
    end
    
    def show_favorites(options={})
        Organization.joins('JOIN favorites ON organizations.fb_id = favorites.organization_id').where('favorites.user_id = \'' + options[:user_id]+'\'')
    end
    
end
