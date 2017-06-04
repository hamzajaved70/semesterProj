class CreatePappointments < ActiveRecord::Migration[5.1]
  def change
    create_table :pappointments do |t|

      t.timestamps
    end
  end
end
