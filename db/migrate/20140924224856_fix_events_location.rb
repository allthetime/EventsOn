class FixEventsLocation < ActiveRecord::Migration
  def change
    remove_column :events, :location_id
    add_reference :events, :venue, index: true
  end
end
