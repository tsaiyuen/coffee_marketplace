# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning seed..."
Coffee.destroy_all
User.destroy_all

puts "Creating users..."
User.create(email:"Bob@gmail.com", first_name:"Cynthia", last_name:"Tong", password:"123456", address: "Hollywood road, 1345", phone_number: "1029384756")
User.create(email:"ken@gmail.com", first_name:"Ken", last_name:"Wall", password:"123456", address: "Hollywood road, 7777", phone_number: "16273849506")
User.create(email:"taro@gmail.com", first_name:"Taro", last_name:"Tomiya", password:"123456", address: "Hollywood road, 88754", phone_number: "0987654321")
puts "Finished creating user!"

puts "Creating coffees..."
Coffee.create(name: "Dark Strong Coffee", description: "This is a very strong and dark coffee. Must take it!", price:"10", user_id:1)
Coffee.create(name: "Super Power Coffee", description: "Drink it and you´ll be awake for 3 weeks!", price:"40", user_id:1)
Coffee.create(name: "Sweet Dreams", description: "Light coffee with no bitterness.", price:"20", user_id:1)
Coffee.create(name: "Gold Rocks", description: "Coffee with gold rocks inside.", price:"2000", user_id:2)
Coffee.create(name: "Coffee the Best", description: "Best coffees in the region, this is a must.", price:"80", user_id:2)
Coffee.create(name: "Wake Me Up", description: "Before September Ends! Perfect coffee to rock on!", price:"100", user_id:2)