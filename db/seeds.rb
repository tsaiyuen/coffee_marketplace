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
User.create(email:"cynthia@gmail.com", first_name:"Cynthia", last_name:"Tong", password:"123456", address: "1 Langdon st Madison, WI 53703", phone_number: "1029384756")
User.create(email:"ken@gmail.com", first_name:"Ken", last_name:"Wall", password:"123456", address: "H4198 Nakoosa Trail, Madison, WI 53714", phone_number: "16273849506")
User.create(email:"taro@gmail.com", first_name:"Taro", last_name:"Tomiya", password:"123456", address: "700 Kenseth Way, Cambridge, WI 53523", phone_number: "0987654321")
puts "Finished creating user!"

puts "Creating coffees..."
Coffee.create(name: "Dark Strong Coffee", description: "This is a very strong and dark coffee. Must take it!", price: "10", user: User.first)
Coffee.create(name: "Super Power Coffee", description: "Drink it and you´ll be awake for 3 weeks!", price: "40", user: User.first)
Coffee.create(name: "Sweet Dreams", description: "Light coffee with no bitterness.", price: "20", user: User.first)
Coffee.create(name: "Gold Rocks", description: "Coffee with gold rocks inside.", price: "2000", user: User.second)
Coffee.create(name: "Coffee the Best", description: "Best coffees in the region, this is a must.", price: "80", user: User.second)
Coffee.create(name: "Wake Me Up", description: "Before September Ends! Perfect coffee to rock on!", price: "100", user: User.second)
puts "Finished creating coffees!"

puts "Creating orders..."
Order.create(coffe: Coffee.first, quantity: 2, user: User.last)
Order.create(coffe: Coffee.second, quantity: 1, user: User.last)
Order.create(coffe: Coffee.last, quantity: 1, user: User.last)
puts "Finished creating orders"

puts "Creating reviews..."
Review.create(order: Order.first, rating: 5, description: "Very good coffe. I´ll buy more!")
Review.create(order: Order.second, rating: 3, description: "I wasn´t awake for 3 weeks. Just for a few hours.")
Review.create(order: Order.last, rating: 1, description: "Horrible taste. Nope, don´t buy it....")
puts "Finished creating reviews"
