# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

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
  description: "Spider-Man has spider-like abilities including superhuman strength and the ability to cling to most surfaces. He is also extremely agile and has amazing reflexes. Spider-Man also has a 'spider sense,' that warns him of impending danger. Spider-Man has supplemented his powers with technology",
  age: 29,
  superpower: "Web Slinger",
  brains: 60,
  strength: 84,
  speed: 72,
  price: 350,
  location: "New York")

spider_image = URI.open("https://cdn11.bigcommerce.com/s-0kvv9/images/stencil/1280x1280/products/306001/436169/apiibcz85__65409.1566749349.jpg?c=2&imbypass=on")
spiderman.photo.attach(io: spider_image, filename: 'spiderman.jpg', content_type: 'image/jpg')

catwoman = Superhero.create!(
  name: "Catwoman",
  user: ollie,
  description: "Catwoman, cartoon character, a wily and agile professional thief and sometime love interest of superhero Batman. Clad in a skintight bodysuit and stylized mask and carrying a whip, Selina Kyle, also known as Catwoman, has frequently crossed and recrossed the line between villain and antiheroine.",
  age: 16,
  superpower: "Flying",
  brains: 90,
  strength: 99,
  speed: 95,
  price: 49,
  location: "London")

cat_image = URI.open("https://images-na.ssl-images-amazon.com/images/I/51uPyDr8fkL._SX408_BO1,204,203,200_.jpg")
catwoman.photo.attach(io: cat_image, filename: 'catwoman.jpg', content_type: 'image/jpg')

flash = Superhero.create!(
  name: "Ollie",
  user: ollie,
  # image: "https://i.pinimg.com/474x/be/ff/ee/beffee250d789de4c26434de502b188e--cosplay-fail-flash-cosplay.jpg",
  description: "Flash has super-speed. This not only enables him to run fast, but also translates into a number of additional powers. He can think, read, and react at incredible speeds. Also, he can vibrate at such a speed he can walk through walls.",
  age: 16,
  superpower: "Super-Speed",
  brains: 90,
  strength: 99,
  speed: 95,
  price: 49,
  location: "London")

flash_image = URI.open("https://comicvine1.cbsistatic.com/uploads/original/4/46646/3357137-7502695545-25421.jpg")
flash.photo.attach(io: flash_image, filename: 'flash.jpg', content_type: 'image/jpg')


hulk = Superhero.create!(
  name: "Hulk",
  user: ollie,
  description: "Superman's powers include incredible strength, the ability to fly. X-ray vision, super speed, invulnerability to most attacks, super hearing, and super breath. He is nearly unstoppable. However, Superman does have one weakness, Kryptonite.",
  age: 16,
  superpower: "Flying",
  brains: 90,
  strength: 99,
  speed: 95,
  price: 49,
  location: "London")

hulk_image = URI.open("https://images-na.ssl-images-amazon.com/images/S/cmx-images-prod/Item/765181/765181._SX360_QL80_TTD_.jpg")
hulk.photo.attach(io: hulk_image, filename: 'hulk.jpg', content_type: 'image/jpg')

wonder = Superhero.create!(
  name: "Wonder Woman",
  user: ollie,
  # image: "https://images-na.ssl-images-amazon.com/images/S/cmx-images-prod/Item/263932/DIG063347_1._SX360_QL80_TTD_.jpg",
  description: "Wonder Woman is a compassionate caring, stubborn, opinionated, highly competitive, outgoing, immortal Amazon. Wonder Woman is a warrior born. She tries to avoid conflict but if pressed she will engage in battle and on occasion lose herself in the pleasure of battle.",
  age: 16,
  superpower: "Boobs",
  brains: 90,
  strength: 99,
  speed: 95,
  price: 49,
  location: "London")

wonder_image = URI.open("https://images-na.ssl-images-amazon.com/images/S/cmx-images-prod/Item/263932/DIG063347_1._SX360_QL80_TTD_.jpg")
wonder.photo.attach(io: wonder_image, filename: 'wonderwoman.jpg', content_type: 'image/jpg')

puts "Superheroes are ready!"
