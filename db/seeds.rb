# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


r1 = Role.create(:name => 'user')  
r2 = Role.create(:name => 'admin') 

us1 = User.create(:first_name => "Admin", :middle_name => "a", :last_name => "Admin",
	:father_name => "Piyo", :mobile => "123456", :b_form => "654321", :gender => "Male", 
	:email => 'admin@gmail.com' , :password => 'admin123', :date_of_birth => DateTime.new(2015, 6, 22), :role_id => r2.id) 

Author.create(:email => "author@gmail.com", :password => "author123", :password_confirmation => "author123")