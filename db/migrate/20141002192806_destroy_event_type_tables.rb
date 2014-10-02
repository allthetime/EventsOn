class DestroyEventTypeTables < ActiveRecord::Migration
  def change
    drop_table :types
    drop_table :event_types
  end
end
