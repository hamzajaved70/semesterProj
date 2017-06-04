class AddUserToPassports < ActiveRecord::Migration[5.1]
  def change
    add_column :passports, :user_id, :integer
  end
end
