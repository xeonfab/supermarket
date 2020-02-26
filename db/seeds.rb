# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'date'
require "open-uri"

puts 'Cleaning database...'
Review.destroy_all
Booking.destroy_all
Superhero.destroy_all
User.destroy_all

puts "Making the Superhero Grannys"

spider_image = URI.open("https://cdn11.bigcommerce.com/s-0kvv9/images/stencil/1280x1280/products/306001/436169/apiibcz85__65409.1566749349.jpg?c=2&imbypass=on")

ollie = User.create!(
  first_name: "Ollie",
  last_name: "Ayton",
  email:"user@user.com",
  password: "password",
  password_confirmation: "password")

ollie.avatar.attach(io: spider_image, filename: 'spiderman.jpg', content_type: 'image/jpg')

tom = User.create!(
  first_name: "tom",
  last_name: "Haywood",
  email:"tom@gmail.com",
  password: "password",
  password_confirmation: "password")
spider_image = URI.open("https://cdn11.bigcommerce.com/s-0kvv9/images/stencil/1280x1280/products/306001/436169/apiibcz85__65409.1566749349.jpg?c=2&imbypass=on")
tom.avatar.attach(io: spider_image, filename: 'spiderman.jpg', content_type: 'image/jpg')


fabien = User.create!(
  first_name: "Fabien",
  last_name: "Riou",
  email:"fabien@gmail.com",
  password: "password",
  password_confirmation: "password")
spider_image = URI.open("https://cdn11.bigcommerce.com/s-0kvv9/images/stencil/1280x1280/products/306001/436169/apiibcz85__65409.1566749349.jpg?c=2&imbypass=on")
fabien.avatar.attach(io: spider_image, filename: 'spiderman.jpg', content_type: 'image/jpg')

sean = User.create!(
  first_name: "Shaun",
  last_name: "Wrigley",
  email:"shaun@gmail.com",
  password: "password",
  password_confirmation: "password")
spider_image = URI.open("https://cdn11.bigcommerce.com/s-0kvv9/images/stencil/1280x1280/products/306001/436169/apiibcz85__65409.1566749349.jpg?c=2&imbypass=on")
sean.avatar.attach(io: spider_image, filename: 'spiderman.jpg', content_type: 'image/jpg')


sheila = User.create!(
  first_name: "Sheila",
  last_name: "Sheelz",
  email:"sheila@gmail.com",
  password: "password",
  password_confirmation: "password")
spider_image = URI.open("https://cdn11.bigcommerce.com/s-0kvv9/images/stencil/1280x1280/products/306001/436169/apiibcz85__65409.1566749349.jpg?c=2&imbypass=on")
sheila.avatar.attach(io: spider_image, filename: 'spiderman.jpg', content_type: 'image/jpg')


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
  location: "Tokyo")

cat_image = URI.open("https://images-na.ssl-images-amazon.com/images/I/51uPyDr8fkL._SX408_BO1,204,203,200_.jpg")
catwoman.photo.attach(io: cat_image, filename: 'catwoman.jpg', content_type: 'image/jpg')

flash = Superhero.create!(
  name: "Ollie",
  user: tom,
  image: "https://i.pinimg.com/474x/be/ff/ee/beffee250d789de4c26434de502b188e--cosplay-fail-flash-cosplay.jpg",
  description: "Superman's powers include incredible strength, the ability to fly. X-ray vision, super speed, invulnerability to most attacks, super hearing, and super breath. He is nearly unstoppable. However, Superman does have one weakness, Kryptonite.",
  age: 16,
  superpower: "Super-Speed",
  brains: 90,
  strength: 99,
  speed: 95,
  price: 49,
  location: "Melbourne")

flash_image = URI.open("https://comicvine1.cbsistatic.com/uploads/original/4/46646/3357137-7502695545-25421.jpg")
flash.photo.attach(io: flash_image, filename: 'flash.jpg', content_type: 'image/jpg')


hulk = Superhero.create!(
  name: "Hulk",
  user: sean,
  image: "https://images-na.ssl-images-amazon.com/images/S/cmx-images-prod/Item/765181/765181._SX360_QL80_TTD_.jpg",
  description: "Superman's powers include incredible strength, the ability to fly. X-ray vision, super speed, invulnerability to most attacks, super hearing, and super breath. He is nearly unstoppable. However, Superman does have one weakness, Kryptonite.",
  age: 16,
  superpower: "Flying",
  brains: 90,
  strength: 99,
  speed: 95,
  price: 49,
  location: "Paris")

hulk_image = URI.open("https://images-na.ssl-images-amazon.com/images/S/cmx-images-prod/Item/765181/765181._SX360_QL80_TTD_.jpg")
hulk.photo.attach(io: hulk_image, filename: 'hulk.jpg', content_type: 'image/jpg')

wonder = Superhero.create!(
  name: "Wonder Woman",
  user: fabien,
  image: "https://images-na.ssl-images-amazon.com/images/S/cmx-images-prod/Item/263932/DIG063347_1._SX360_QL80_TTD_.jpg",
  description: "Superman's powers include incredible strength, the ability to fly. X-ray vision, super speed, invulnerability to most attacks, super hearing, and super breath. He is nearly unstoppable. However, Superman does have one weakness, Kryptonite.",
  age: 16,
  superpower: "Boobs",
  brains: 90,
  strength: 99,
  speed: 95,
  price: 49,
  location: "Berlin")

Booking.create!(
  user: ollie,
  superhero: flash,
  price: 15,
  start_date: Date.new(2001,2,3),
  end_date: Date.new(2001,2,3)
  )

wonder_image = URI.open("https://images-na.ssl-images-amazon.com/images/S/cmx-images-prod/Item/263932/DIG063347_1._SX360_QL80_TTD_.jpg")
wonder.photo.attach(io: wonder_image, filename: 'wonderwoman.jpg', content_type: 'image/jpg')

puts "Superheroes are ready!"
