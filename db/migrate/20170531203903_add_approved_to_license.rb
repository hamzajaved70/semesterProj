class AddApprovedToLicense < ActiveRecord::Migration[5.1]
  def change
    add_column :licenses, :approved, :boolean, default: false
  end
end
