class CreateCnics < ActiveRecord::Migration[5.1]
  def change
    create_table :cnics do |t|

      t.timestamps
    end
  end
end
