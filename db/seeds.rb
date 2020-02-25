# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Making the Superhero Grannys"
Superhero.create!(name: "Spiderman", image: "https://cdn11.bigcommerce.com/s-0kvv9/images/stencil/1280x1280/products/306001/436169/apiibcz85__65409.1566749349.jpg?c=2&imbypass=on", description: "Spider-Man has spider-like abilities including superhuman strength and the ability to cling to most surfaces. He is also extremely agile and has amazing reflexes. Spider-Man also has a "spider sense," that warns him of impending danger. Spider-Man has supplemented his powers with technology", age: 29, superpower: "Web Slinger", brains: 60, strength: 84, speed: 72, price: 350, location: "New York")
puts "Superheroes are ready!"
