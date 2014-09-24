class FixLocations < ActiveRecord::Migration
  def change
  
    drop_table :locations

    create_table "venues", force: true do |t|
      t.string :name 
      t.string :address
      t.float :latitude
      t.float :longitude 
      t.string :type
      t.timestamps
    end 


  end
end
