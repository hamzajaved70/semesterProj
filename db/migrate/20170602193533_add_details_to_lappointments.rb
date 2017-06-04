class AddDetailsToLappointments < ActiveRecord::Migration[5.1]
  def change
    add_column :lappointments, :time_slot, :datetime
    add_column :lappointments, :user_id, :integer
    add_column :lappointments, :license_id, :integer
  end
end
