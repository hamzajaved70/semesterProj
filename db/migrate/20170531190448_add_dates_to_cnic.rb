class AddDatesToCnic < ActiveRecord::Migration[5.1]
  def change
    add_column :cnics, :issue_date, :date
    add_column :cnics, :expiry_date, :date
  end
end
