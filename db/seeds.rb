# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Creating default roles
admin = Role.find_or_create_by!(name: "Admin")
Role.find_or_create_by!(name: "HR")
Role.find_or_create_by!(name: "Project Manager")
Role.find_or_create_by!(name: "Team Lead")
Role.find_or_create_by!(name: "Associate Engineer")

#Creating Employer
navtech = Employer.find_or_create_by!(name: "Navaratan Technologies", city: "Hyderabad")

puts navtech.inspect
puts admin.inspect
#Creating Employee with role Admin.
rahul = Employee.find_by(phone: "9703002211")
unless rahul
  Employee.create!(email: "rahul.banka@navaratan.com", password: "12345678", 
  first_name: "Rahul Goutham", last_name: "Banka", phone: "9703002211", date_of_join: Time.now, employer_id: navtech.id, role_id: admin.id)
end