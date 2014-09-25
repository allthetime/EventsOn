class DeleteTypeFromVenue < ActiveRecord::Migration
  def change
    remove_column :venues, :type
  end
end
