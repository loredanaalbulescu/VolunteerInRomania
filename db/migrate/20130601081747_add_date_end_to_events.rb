class AddDateEndToEvents < ActiveRecord::Migration
  def change
    add_column :events, :date_end, :date_time
  end
end
