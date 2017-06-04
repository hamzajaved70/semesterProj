class AddApprovedToCnics < ActiveRecord::Migration[5.1]
  def change
    add_column :cnics, :approved, :boolean, default: false
  end
end
