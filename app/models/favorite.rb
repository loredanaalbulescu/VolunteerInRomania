class Favorite < ActiveRecord::Base
  attr_accessible :organization_id, :user_id
  
    belongs_to :organization
    belongs_to :user
    
    def show_favorites(options={})
        Favorite.where(user_id: options[:user_id])
    end

end
