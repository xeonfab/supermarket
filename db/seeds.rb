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

superman = Superhero.create!(
  name: "Superman",
  user: ollie,
  image: "https://i.pinimg.com/474x/24/85/6d/24856dc11e14d1a6d37a6cc2561009bb--batman-superhero-superhero-ideas.jpg",
  description: "Superman's powers include incredible strength, the ability to fly. X-ray vision, super speed, invulnerability to most attacks, super hearing, and super breath. He is nearly unstoppable. However, Superman does have one weakness, Kryptonite.",
  age: 16,
  superpower: "Flying",
  brains: 90,
  strength: 99,
  speed: 95,
  price: 49,
  location: "London")

puts "Superheroes are ready!"
