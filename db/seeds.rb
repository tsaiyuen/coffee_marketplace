require 'open-uri'


puts "Cleaning seed..."
Review.destroy_all
Order.destroy_all
Coffee.destroy_all
User.destroy_all
puts "DB clean successfully"

puts "Creating users..."
User.create(email:"cynthia@gmail.com", first_name:"Cynthia", last_name:"Tong", password:"123456", address: "1 Langdon st Madison, WI 53703", phone_number: 1233)
User.create(email:"ken@gmail.com", first_name:"Ken", last_name:"Wall", password:"123456", address: "H4198 Nakoosa Trail, Madison, WI 53714", phone_number: 22222)
User.create(email:"taro@gmail.com", first_name:"Taro", last_name:"Tomiya", password:"123456", address: "700 Kenseth Way, Cambridge, WI 53523", phone_number: 1211)
puts "Finished creating user!"

puts "Creating coffees..."
coffee1 = Coffee.create(name: "Dark Strong Coffee", description: "This is a very strong and dark coffee. Must take it!", price: "10", user: User.first)
file1 = open('https://images.unsplash.com/photo-1497515114629-f71d768fd07c?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8Y29mZmVlfGVufDB8fDB8&auto=format&fit=crop&w=500&q=60')
coffee1.photo.attach(io: file1, filename: 'some-image1.jpg')

coffee2 = Coffee.create(name: "Super Power Coffee", description: "Drink it and you´ll be awake for 3 weeks!", price: "40", user: User.first)
file2 = open('https://images.unsplash.com/photo-1507133750040-4a8f57021571?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8NXx8Y29mZmVlfGVufDB8fDB8&auto=format&fit=crop&w=500&q=60')
coffee2.photo.attach(io: file2, filename: 'some-image2.jpg')

coffee3 = Coffee.create(name: "Sweet Dreams", description: "Light coffee with no bitterness.", price: "20", user: User.first)
file3 = open('https://images.unsplash.com/photo-1530032582480-edd739014c39?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8Nnx8Y29mZmVlfGVufDB8fDB8&auto=format&fit=crop&w=500&q=60')
coffee3.photo.attach(io: file3, filename: 'some-image3.jpg')

coffee4 = Coffee.create(name: "Gold Rocks", description: "Coffee with gold rocks inside.", price: "2000", user: User.second)
file4 = open('https://images.unsplash.com/photo-1497515114629-f71d768fd07c?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8Y29mZmVlfGVufDB8fDB8&auto=format&fit=crop&w=500&q=60')
coffee4.photo.attach(io: file4, filename: 'some-image4.jpg')

coffee5 = Coffee.create(name: "Coffee the Best", description: "Best coffees in the region, this is a must.", price: "80", user: User.second)
file5 = open('https://images.unsplash.com/photo-1497515114629-f71d768fd07c?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8Y29mZmVlfGVufDB8fDB8&auto=format&fit=crop&w=500&q=60')
coffee5.photo.attach(io: file5, filename: 'some-image5.jpg')

coffee6 = Coffee.create(name: "Wake Me Up", description: "Before September Ends! Perfect coffee to rock on!", price: "100", user: User.second)
file6 = open('https://images.unsplash.com/photo-1497515114629-f71d768fd07c?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8Y29mZmVlfGVufDB8fDB8&auto=format&fit=crop&w=500&q=60')
coffee6.photo.attach(io: file6, filename: 'some-image6.jpg')

puts "Finished creating coffees!"

puts "Creating orders..."
Order.create(coffee: Coffee.first, quantity: 2, user: User.last)
Order.create(coffee: Coffee.second, quantity: 1, user: User.last)
Order.create(coffee: Coffee.last, quantity: 1, user: User.last)
puts "Finished creating orders"

puts "Creating reviews..."
Review.create(order: Order.first, rating: 5, description: "Very good coffe. I´ll buy more!")
Review.create(order: Order.second, rating: 3, description: "I wasn´t awake for 3 weeks. Just for a few hours.")
Review.create(order: Order.last, rating: 1, description: "Horrible taste. Nope, don´t buy it....")
puts "Finished creating reviews"
