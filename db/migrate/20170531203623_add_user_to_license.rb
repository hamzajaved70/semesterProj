class AddUserToLicense < ActiveRecord::Migration[5.1]
  def change
    add_column :licenses, :user_id, :integer
  end
end
