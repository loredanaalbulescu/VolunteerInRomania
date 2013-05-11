class ChangeOrganizationIdTypeInFavorites < ActiveRecord::Migration
    def up
        change_column :favorites, :organization_id, :string
    end
    
    def down
        change_column :favorites, :organization_id, :integer
    end
end
