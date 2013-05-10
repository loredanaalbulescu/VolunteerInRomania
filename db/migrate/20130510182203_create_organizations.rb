class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :city
      t.string :fb_id
      t.string :email
      t.text :description
      t.integer :profile_id

      t.timestamps
    end
  end
end
