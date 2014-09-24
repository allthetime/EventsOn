class Initial < ActiveRecord::Migration
  def change
  
    create_table "users", force: true do |t|
      t.string :name
      t.string :password
      t.string :salt
      t.string :email
      t.string :avatar_url
      t.timestamps
    end

    create_table "event_planners", force: true do |t|
      t.string :name
      t.string :password
      t.string :salt
      t.string :email
      t.string :phone_number
      t.string :avatar_url
      t.timestamps
    end

    create_table "bookmarks", force: true do |t|
      t.references :user
      t.references :event
      t.timestamps
    end

    create_table "comments", force: true do |t|
      t.string :content
      t.references :user
      t.references :event
      t.timestamps
    end

    create_table "reviews", force: true do |t|
      t.string :content
      t.integer :rating
      t.references :user
      t.references :event
      t.timestamps
    end

    create_table "events", force: true do |t|
      t.string :name
      t.datetime :date
      t.string :description
      t.string :picture_url
      t.string :link_url
      t.references :event_planner
      t.references :location
      t.timestamps
    end

    create_table "types", force: true do |t|
      t.string :name 
      t.timestamps
    end  

    create_table "event_types", force: true do |t|
      t.references :event
      t.references :type
      t.timestamps
    end     

    create_table "locations", force: true do |t|
      t.string :name 
      t.string :address
      t.float :latitude
      t.float :longitude 
      t.string :type
      t.timestamps
    end 
  end
end
