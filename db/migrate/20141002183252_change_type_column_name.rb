class ChangeTypeColumnName < ActiveRecord::Migration
  def change
    change_table :events do |t|
      t.rename :type, :type_name
    end
  end
end
