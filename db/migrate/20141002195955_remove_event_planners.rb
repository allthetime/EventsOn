class RemoveEventPlanners < ActiveRecord::Migration
  def change
    drop_table :event_planners

    add_column :users, :phone_number, :string
    add_column :users, :planner, :boolean

    remove_column :events, :event_planner_id
    add_column :events, :user_id, :integer
  end
end
