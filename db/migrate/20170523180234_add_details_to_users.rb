class AddDetailsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :first_name, :string, :default => nil
    add_column :users, :middle_name, :string, :default => nil
    add_column :users, :last_name, :string, :default => nil
    add_column :users, :father_name, :string, :default => nil
    add_column :users, :mobile, :string, :default => nil
    add_column :users, :b_form, :string, :default => nil
    add_column :users, :gender, :string
  end
end
    