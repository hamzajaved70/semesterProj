class AddDetailsToPappointments < ActiveRecord::Migration[5.1]
  def change
    add_column :pappointments, :time_slot, :datetime
    add_column :pappointments, :user_id, :integer
    add_column :pappointments, :passport_id, :integer
  end
end
