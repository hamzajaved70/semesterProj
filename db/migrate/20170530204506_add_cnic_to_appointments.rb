class AddCnicToAppointments < ActiveRecord::Migration[5.1]
  def change
    add_column :appointments, :cnic_id, :integer
  end
end
