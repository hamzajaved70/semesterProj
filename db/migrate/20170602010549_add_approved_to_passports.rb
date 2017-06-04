class AddApprovedToPassports < ActiveRecord::Migration[5.1]
  def change
    add_column :passports, :approved, :boolean, default: false
  end
end
