class AddDetailsToPassports < ActiveRecord::Migration[5.1]
  def change
    add_column :passports, :full_name, :string
    add_column :passports, :father_name, :string
    add_column :passports, :gender, :string
    add_column :passports, :nationality, :string
    add_column :passports, :cnic, :string
    add_column :passports, :date_of_issue, :date
    add_column :passports, :date_of_expiry, :date
    add_column :passports, :dob, :date
    add_column :passports, :permanent_address, :string
  end
end
