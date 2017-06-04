class AddDetailsToLicense < ActiveRecord::Migration[5.1]
  def change
    add_column :licenses, :full_name, :string
    add_column :licenses, :father_name, :string
    add_column :licenses, :cnic, :string
    add_column :licenses, :dob, :date
    add_column :licenses, :gender, :string
    add_column :licenses, :blood, :string
    add_column :licenses, :mobile, :string
    add_column :licenses, :permanent_address, :string
    add_column :licenses, :issue_date, :date
    add_column :licenses, :expiry_date, :date
  end
end
