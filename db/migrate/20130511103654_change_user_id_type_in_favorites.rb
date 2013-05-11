class ChangeUserIdTypeInFavorites < ActiveRecord::Migration
        def up
            change_column :favorites, :user_id, :string
        end
        
        def down
            change_column :favorites, :user_id, :integer
        end
end
