class CreatePassports < ActiveRecord::Migration[5.1]
  def change
    create_table :passports do |t|

      t.timestamps
    end
  end
end
