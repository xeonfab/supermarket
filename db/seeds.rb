# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Review.destroy_all if Rails.env.development?
Booking.destroy_all if Rails.env.development?
Superhero.destroy_all if Rails.env.development?
User.destroy_all if Rails.env.development?

puts "Making the Superhero Grannys"
ollie = User.create!(
  first_name: "Ollie",
  last_name: "Ayton",
  email:"superhero@gmail.com",
  password: "password",
  password_confirmation: "password")


spiderman = Superhero.create!(
  name: "Spiderman",
  user: ollie,
  image: "https://cdn11.bigcommerce.com/s-0kvv9/images/stencil/1280x1280/products/306001/436169/apiibcz85__65409.1566749349.jpg?c=2&imbypass=on",
  description: "Spider-Man has spider-like abilities including superhuman strength and the ability to cling to most surfaces. He is also extremely agile and has amazing reflexes. Spider-Man also has a 'spider sense,' that warns him of impending danger. Spider-Man has supplemented his powers with technology",
  age: 29,
  superpower: "Web Slinger",
  brains: 60,
  strength: 84,
  speed: 72,
  price: 350,
  location: "New York")

catwoman = Superhero.create!(
  name: "Catwoman",
  user: ollie,
  image: "https://images-na.ssl-images-amazon.com/images/I/51uPyDr8fkL._SX408_BO1,204,203,200_.jpg",
  description: "Superman's powers include incredible strength, the ability to fly. X-ray vision, super speed, invulnerability to most attacks, super hearing, and super breath. He is nearly unstoppable. However, Superman does have one weakness, Kryptonite.",
  age: 16,
  superpower: "Flying",
  brains: 90,
  strength: 99,
  speed: 95,
  price: 49,
  location: "London")

flash = Superhero.create!(
  name: "Ollie",
  user: ollie,
  image: "https://i.pinimg.com/474x/be/ff/ee/beffee250d789de4c26434de502b188e--cosplay-fail-flash-cosplay.jpg",
  description: "Superman's powers include incredible strength, the ability to fly. X-ray vision, super speed, invulnerability to most attacks, super hearing, and super breath. He is nearly unstoppable. However, Superman does have one weakness, Kryptonite.",
  age: 16,
  superpower: "Flying",
  brains: 90,
  strength: 99,
  speed: 95,
  price: 49,
  location: "London")


flash = Superhero.create!(
  name: "Hulk",
  user: ollie,
  image: "https://images-na.ssl-images-amazon.com/images/S/cmx-images-prod/Item/765181/765181._SX360_QL80_TTD_.jpg",
  description: "Superman's powers include incredible strength, the ability to fly. X-ray vision, super speed, invulnerability to most attacks, super hearing, and super breath. He is nearly unstoppable. However, Superman does have one weakness, Kryptonite.",
  age: 16,
  superpower: "Flying",
  brains: 90,
  strength: 99,
  speed: 95,
  price: 49,
  location: "London")

flash = Superhero.create!(
  name: "Wonder Woman",
  user: ollie,
  image: "https://images-na.ssl-images-amazon.com/images/S/cmx-images-prod/Item/263932/DIG063347_1._SX360_QL80_TTD_.jpg",
  description: "Superman's powers include incredible strength, the ability to fly. X-ray vision, super speed, invulnerability to most attacks, super hearing, and super breath. He is nearly unstoppable. However, Superman does have one weakness, Kryptonite.",
  age: 16,
  superpower: "Boobs",
  brains: 90,
  strength: 99,
  speed: 95,
  price: 49,
  location: "London")

puts "Superheroes are ready!"
