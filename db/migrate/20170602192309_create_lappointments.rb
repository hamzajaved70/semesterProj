class CreateLappointments < ActiveRecord::Migration[5.1]
  def change
    create_table :lappointments do |t|

      t.timestamps
    end
  end
end
