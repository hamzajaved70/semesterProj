class AddUserToCnic < ActiveRecord::Migration[5.1]
  def change
    add_column :cnics, :user_id, :integer
  end
end
