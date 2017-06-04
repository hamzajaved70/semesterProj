class AddDetailsToCnic < ActiveRecord::Migration[5.1]
  def change
    add_column :cnics, :full_name, :string
    add_column :cnics, :father_name, :string
    add_column :cnics, :gender, :string
    add_column :cnics, :country_of_stay, :string
    add_column :cnics, :b_form, :string
    add_column :cnics, :date_of_issue, :date
    add_column :cnics, :date_of_expiry, :date
    add_column :cnics, :dob, :date
    add_column :cnics, :current_address, :string
    add_column :cnics, :permanent_address, :string
  end
end
