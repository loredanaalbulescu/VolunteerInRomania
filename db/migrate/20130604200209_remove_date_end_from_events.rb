class RemoveDateEndFromEvents < ActiveRecord::Migration
  def up
    remove_column :events, :date_end
  end

  def down
    add_column :events, :date_end, :date_time
  end
end
