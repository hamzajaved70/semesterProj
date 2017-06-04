class AddDetailsToAppointments < ActiveRecord::Migration[5.1]
  def change
    add_column :appointments, :time_slot, :datetime
  end
end
