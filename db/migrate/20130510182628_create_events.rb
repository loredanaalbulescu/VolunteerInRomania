class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :city
      t.integer :organization_id
      t.datetime :date_time
      t.string :location
      t.text :description
      t.string :price
      t.integer :participants_number

      t.timestamps
    end
  end
end
