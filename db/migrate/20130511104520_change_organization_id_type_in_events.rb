class ChangeOrganizationIdTypeInEvents < ActiveRecord::Migration
    def up
        change_column :events, :organization_id, :string
    end
    
    def down
        change_column :events, :organization_id, :integer
    end
end
