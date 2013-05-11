class ChangeUserIdTypeInParticipates < ActiveRecord::Migration
    def up
        change_column :participates, :user_id, :string
    end
    
    def down
        change_column :participates, :user_id, :integer
    end
end
