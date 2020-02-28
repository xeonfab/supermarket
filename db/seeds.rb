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

puts "Making the Superheroes"

spider_image = URI.open("https://cdn11.bigcommerce.com/s-0kvv9/images/stencil/1280x1280/products/306001/436169/apiibcz85__65409.1566749349.jpg?c=2&imbypass=on")

ollie = User.create!(
  first_name: "Ollie",
  last_name: "Ayton",
  email:"user@user.com",
  password: "password",
  password_confirmation: "password")

ollie.avatar.attach(io: ollie_image, filename: 'spiderman.jpg', content_type: 'image/jpg')

tomuser = User.create!(
  first_name: "tom",
  last_name: "Haywood",
  email:"tom@gmail.com",
  password: "password",
  password_confirmation: "password")
spider_image = URI.open("https://cdn11.bigcommerce.com/s-0kvv9/images/stencil/1280x1280/products/306001/436169/apiibcz85__65409.1566749349.jpg?c=2&imbypass=on")
tomuser.avatar.attach(io: tomuser_image, filename: 'spiderman.jpg', content_type: 'image/jpg')


fabienuser = User.create!(
  first_name: "Fabien",
  last_name: "Riou",
  email:"fabien@gmail.com",
  password: "password",
  password_confirmation: "password")
spider_image = URI.open("https://cdn11.bigcommerce.com/s-0kvv9/images/stencil/1280x1280/products/306001/436169/apiibcz85__65409.1566749349.jpg?c=2&imbypass=on")
fabien.avatar.attach(io: spider_image, filename: 'spiderman.jpg', content_type: 'image/jpg')

seanuser = User.create!(
  first_name: "Sean",
  last_name: "Wrigley",
  email:"sean@gmail.com",
  password: "password",
  password_confirmation: "password")
spider_image = URI.open("https://cdn11.bigcommerce.com/s-0kvv9/images/stencil/1280x1280/products/306001/436169/apiibcz85__65409.1566749349.jpg?c=2&imbypass=on")
seanuser.avatar.attach(io: seanuser_image, filename: 'spiderman.jpg', content_type: 'image/jpg')


sheilauser = User.create!(
  first_name: "Sheila",
  last_name: "Sheelz",
  email:"sheila@gmail.com",
  password: "password",
  password_confirmation: "password")
sheilauser_image = URI.open("https://cdn11.bigcommerce.com/s-0kvv9/images/stencil/1280x1280/products/306001/436169/apiibcz85__65409.1566749349.jpg?c=2&imbypass=on")
sheilauser.avatar.attach(io: sheilauser_image, filename: 'spiderman.jpg', content_type: 'image/jpg')


# to add the user create before. Just copy paste this below....


oliver = Superhero.create!(
  name: "Ollie",
  user: ollie,
  description: "Worked for Aldi as an Area Manager. Enjoyed the role and responsibility but wanted more scope for creativity and autonomy. I also wanted a deeper understanding of tech, if I am ever to start my own thing etc. I am not sure of my next step but hopefully the course gives me further clarity!",
  age: 12,
  superpower: "Shit banter",
  brains: 2,
  strength: 4,
  speed: 11,
  price: 22,
  location: "London")

oliver_image = URI.open("https://res.cloudinary.com/supermarket/image/upload/v1582849607/SuperMarket/244_ofllww.png")
oliver.photo.attach(io: oliver_image, filename: 'oliver.jpg', content_type: 'image/jpg')

minh = Superhero.create!(
  name: "Minh",
  user: ollie,
  description: "I'm passionate about creating clean and beautiful tech products. Coding give me the tool to make the visual interface become interactive. I wanna work as software engineer or in A.I related fields in the future",
  age: 98,
  superpower: "Cheescake for breakfast",
  brains: 50,
  strength: 100,
  speed: 99,
  price: 999,
  location: "Alaska")

minh_image = URI.open("https://res.cloudinary.com/supermarket/image/upload/v1582849607/SuperMarket/241_wljnfm.png")
minh.photo.attach(io: minh_image, filename: 'minh.jpg', content_type: 'image/jpg')


cassie = Superhero.create!(
  name: "Cassi",
  user: ollie,
  description: "I've worked in Digital Marketing prior to doing this course. After doing some free online courses on web development, I realised I really enjoyed coding and decided to join Le Wagon to gain more tech skills!",
  age: 26,
  superpower: "Vegan",
  brains: 123,
  strength: 321,
  speed: 789,
  price: 987,
  location: "Melbourne")

cassie_image = URI.open("https://res.cloudinary.com/supermarket/image/upload/v1582849609/SuperMarket/251_wckw74.png")
cassie.photo.attach(io: cassie_image, filename: 'cassie.jpg', content_type: 'image/jpg')

juliette = Superhero.create!(
  name: "Juliette",
  user: ollie,
  description: "Used to be a PR consultant, wanted to acquire new skills, decided to hop on Le Wagon to a new career path.",
  age: 19,
  superpower: "Sick tats",
  brains: 80,
  strength: 1,
  speed: 100,
  price: 333,
  location: "Paris")

juliette_image = URI.open("https://res.cloudinary.com/supermarket/image/upload/v1582849608/SuperMarket/247_uomcnq.png")
juliette.photo.attach(io: juliette_image, filename: 'juliette.jpg', content_type: 'image/jpg')

wes = Superhero.create!(
  name: "Wes",
  user: ollie,
  description: "Tried University with Software and Chemical Engineering and wasn't a fan of the teaching style, now i want to try something else. Also wanting to leave my old city of Brisbane to explore new places and meet more exciting people and cultures.",
  age: 8,
  superpower: "Adderall",
  brains: 100,
  strength: 10,
  speed: 10,
  price: 111,
  location: "Brisbane")

wes_image = URI.open("https://res.cloudinary.com/supermarket/image/upload/v1582849607/SuperMarket/237_vywkjc.png")
wes.photo.attach(io: wes_image, filename: 'wes.jpg', content_type: 'image/jpg')


nikolai = Superhero.create!(
  name: "Nikolai",
  user: ollie,
  description: "After 7 years of working as a project manager/light designer, I'm excited to head in a new direction and start a new chapter in my life. I am ready to let the developer lifestyle absorb me.",
  age: 30,
  superpower: "Viking cheesecake",
  brains: 88,
  strength: 88,
  speed: 88,
  price: 88,
  location: "Oslo")

nikolai_image = URI.open("https://res.cloudinary.com/supermarket/image/upload/v1582849608/SuperMarket/240_deyhje.png")
nikolai.photo.attach(io: nikolai_image, filename: 'nikolai.jpg', content_type: 'image/jpg')

tom = Superhero.create!(
  name: "Tom",
  user: ollie,
  description: "I graduated from a double degree in Arts and Law at the end of 2019, but I am looking for a change of career direction. I'm very excited to learn how to code so that I have the ability to launch any projects that I have in the future.",
  age: 21,
  superpower: "Flowing locks",
  brains: 50,
  strength: 50,
  speed: 50,
  price: 50,
  location: "Bogota")

tom_image = URI.open("https://res.cloudinary.com/supermarket/image/upload/v1582849606/SuperMarket/231_cgufe3.png")
tom.photo.attach(io: tom_image, filename: 'tom.jpg', content_type: 'image/jpg')

katie = Superhero.create!(
  name: "Katie",
  user: ollie,
  description: "I've been working in finance for the past few years however I'm looking for a change and to take control of my future. Thanks for having me.",
  age: 22,
  superpower: "Volunteering - you should too",
  brains: 99,
  strength: 98,
  speed: 97,
  price: 96,
  location: "Christchurch")

katie_image = URI.open("https://res.cloudinary.com/supermarket/image/upload/v1582849609/SuperMarket/253_lejuso.png")
katie.photo.attach(io: katie_image, filename: 'katie.jpg', content_type: 'image/jpg')

li = Superhero.create!(
  name: "Li",
  user: ollie,
  description: "Hi, this is Li. I am a graduate. I don't like what i did in the uni, and I want to start a career in software development in Melbourne. Nice to meet you!",
  age: 16,
  superpower: "Break dancing",
  brains: 99,
  strength: 99,
  speed: 99,
  price: 99,
  location: "Moscow")

li_image = URI.open("https://res.cloudinary.com/supermarket/image/upload/v1582849608/SuperMarket/250_gqrheo.png")
li.photo.attach(io: li_image, filename: 'li.jpg', content_type: 'image/jpg')

cam = Superhero.create!(
  name: "Cam",
  user: tomuser,
  description: "I'm a physically worn out carpenter who wants to change industries. Apparently this is where I should be. I'm also hungry so will update the bio later ...",
  age: 80,
  superpower: "Home made tattoos",
  brains: 100,
  strength: 1,
  speed: 1,
  price: 100,
  location: "Nairobi")

cam_image = URI.open("https://res.cloudinary.com/supermarket/image/upload/v1582849606/SuperMarket/232_q8ladk.png")
cam.photo.attach(io: cam_image, filename: 'cam.jpg', content_type: 'image/jpg')

dani = Superhero.create!(
  name: "Dani",
  user: tomuser,
  description: "I've travelled and worked in a bunch of different places which has been great exposure but... Looking for something more hands-on tech wise than content writing and other vaguely digital stuff I was doing before. After Le Wagon I'll hopefully land a junior developer role...but I'll be travelling for a break first :)",
  age: 25,
  superpower: "Flight",
  brains: 999,
  strength: 111,
  speed: 999,
  price: 900,
  location: "Perth")

dani_image = URI.open("https://res.cloudinary.com/supermarket/image/upload/v1582849608/SuperMarket/252_ujfojl.png")
dani.photo.attach(io: dani_image, filename: 'dani.jpg', content_type: 'image/jpg')

nicolas = Superhero.create!(
  name: "Nicolas",
  user: tomuser,
  description: "Argentinian living in Melbourne. Used to work in fashion design and as a teacher in Buenos Aires. Now I'm looking foward to career change on tech.",
  age: 25,
  superpower: "Flight",
  brains: 999,
  strength: 111,
  speed: 999,
  price: 900,
  location: "Buenos Aires")

nicolas_image = URI.open("https://res.cloudinary.com/supermarket/image/upload/v1582849607/SuperMarket/243_lmtvq4.png")
nicolas.photo.attach(io: nicolas_image, filename: 'nicolas.jpg', content_type: 'image/jpg')

fabien = Superhero.create!(
  name: "Fabien",
  user: fabienuser,
  description: "I'm Fabien, and I'm Product Designer & Manager. I want to get more technical skills to design better products. Not only design products and services. Make it and push it online !",
  age: 100,
  superpower: "Cat whisperer",
  brains: 50,
  strength: 50,
  speed: 50,
  price: 50,
  location: "Paris")

fabien_image = URI.open("https://res.cloudinary.com/supermarket/image/upload/v1582849609/SuperMarket/254_ruelud.png")
fabien.photo.attach(io: fabien_image, filename: 'fabien.jpg', content_type: 'image/jpg')

dan = Superhero.create!(
  name: "Daniel",
  user: ollie,
  description: "Too cool for a description",
  age: 69,
  superpower: "Sword swollowing",
  brains: 100,
  strength: 1,
  speed: 100,
  price: 1,
  location: "New York")

dan_image = URI.open("https://res.cloudinary.com/supermarket/image/upload/v1582849608/SuperMarket/246_pgkhhy.png")
dan.photo.attach(io: dan_image, filename: 'dan.jpg', content_type: 'image/jpg')

sean = Superhero.create!(
  name: "Sean",
  user: ollie,
  description: "I love business and startup communities where I will be looking to transition more into product management and newer digital focused companies.",
  age: 30,
  superpower: "Snacking",
  brains: 1,
  strength: 1,
  speed: 1,
  price: 1,
  location: "Gaborone")

sean_image = URI.open("https://res.cloudinary.com/supermarket/image/upload/v1582849608/SuperMarket/242_dsymcs.png")
sean.photo.attach(io: sean_image, filename: 'sean.jpg', content_type: 'image/jpg')

nicz = Superhero.create!(
  name: "Nicholas",
  user: ollie,
  description: "Hello world. My name is Nicholas Zeitoun I am doing Le Wagon Web Development bootcamp. Batch #348 in Melbourne Australia! I'd like to learn how to build web applications.",
  age: 30,
  superpower: "Cards ninja",
  brains: 100,
  strength: 100,
  speed: 100,
  price: 100,
  location: "Melbourne")

nicz_image = URI.open("https://res.cloudinary.com/supermarket/image/upload/v1582849608/SuperMarket/245_he4ebj.png")
nicz.photo.attach(io: nicz_image, filename: 'nicz.jpg', content_type: 'image/jpg')

ellen = Superhero.create!(
  name: "Ellen",
  user: ollie,
  description: "A former Product Manager now based in Melbourne. I'm interested in coding and keen on digital gadgets such as Raspberry Pi. After Le Wagon, hopefully I can change my career as a full-stack developer, or, a full-stack Product Manager.",
  age: 88,
  superpower: "Lazer eyes",
  brains: 100,
  strength: 100,
  speed: 100,
  price: 100,
  location: "Beijing")

ellen_image = URI.open("https://res.cloudinary.com/supermarket/image/upload/v1582849608/SuperMarket/249_ykf1xf.png")
ellen.photo.attach(io: ellen_image, filename: 'ellen.jpg', content_type: 'image/jpg')


nico = Superhero.create!(
  name: "Nico",
  user: ollie,
  description: "I'm from Uruguay. I studied management and got my degree some years ago and I was working on that field. I always loved the programming field but I recently decided that I wanted to try working as a programmer so I enrolled on Le Wagon and now I am starting my freelance career. Give me a call if I can help you!",
  age: 100,
  superpower: "Kick flips and shit",
  brains: 100,
  strength: 100,
  speed: 100,
  price: 100,
  location: "Montevideo")

nico_image = URI.open("https://res.cloudinary.com/supermarket/image/upload/v1582849606/SuperMarket/233_bguz28.png")
nico.photo.attach(io: nico_image, filename: 'nico.jpg', content_type: 'image/jpg')


ameya = Superhero.create!(
  name: "ameya",
  user: fabienuser,
  description: "I'm from Uruguay. I studied management and got my degree some years ago and I was working on that field. I always loved the programming field but I recently decided that I wanted to try working as a programmer so I enrolled on Le Wagon and now I am starting my freelance career. Give me a call if I can help you!",
  age: 100,
  superpower: "Origami",
  brains: 100,
  strength: 100,
  speed: 100,
  price: 100,
  location: "Melbourne")

ameya_image = URI.open("https://res.cloudinary.com/supermarket/image/upload/v1582849607/SuperMarket/234_izjddr.png")
ameya.photo.attach(io: ameya_image, filename: 'ameya.jpg', content_type: 'image/jpg')

sy = Superhero.create!(
  name: "Sy",
  user: fabienuser,
  description: "Used to sell beer, now just testing the Ballmer Peak. ¯\_(ツ)_/¯. Looking to be a software developer and/or software engineer after the program.",
  age: 100,
  superpower: "Hipster",
  brains: 100,
  strength: 100,
  speed: 100,
  price: 100,
  location: "Georgia")

sy_image = URI.open("https://res.cloudinary.com/supermarket/image/upload/v1582849606/SuperMarket/235_z2vdhd.png")
sy.photo.attach(io: sy_image, filename: 'sy.jpg', content_type: 'image/jpg')

ben = Superhero.create!(
  name: "Ben",
  user: ollie,
  description: "I'm a UX Designer from Melbourne Australia. Making technology accessible to all. Building single page apps using React and designing with Figma.",
  age: 100,
  superpower: "Yodeling",
  brains: 100,
  strength: 100,
  speed: 100,
  price: 100,
  location: "Shanghai")

ben_image = URI.open("https://res.cloudinary.com/supermarket/image/upload/v1582849606/SuperMarket/236_gslok9.png")
ben.photo.attach(io: ben_image, filename: 'ben.jpg', content_type: 'image/jpg')

karmar = Superhero.create!(
  name: "Karmar",
  user: fabienuser,
  description: "I wanted a change in career from finance / marketing and I figure it best to just jump in and start sooner than later - and hopefully after le-wagon course I can.",
  age: 100,
  superpower: "Teleportation",
  brains: 100,
  strength: 100,
  speed: 100,
  price: 100,
  location: "Sydney")

karmar_image = URI.open("https://res.cloudinary.com/supermarket/image/upload/v1582849607/SuperMarket/238_iionci.png")
karmar.photo.attach(io: karmar_image, filename: 'karmar.jpg', content_type: 'image/jpg')


sheila = Superhero.create!(
  name: "Sheila",
  user: ollie,
  description: "Previously a technical product manager who fell in love with coding via Le Wagon.",
  age: 100,
  superpower: "Granny fetish",
  brains: 100,
  strength: 100,
  speed: 100,
  price: 100,
  location: "Georgia")

sheila_image = URI.open("https://res.cloudinary.com/supermarket/image/upload/v1582849607/SuperMarket/239_eg4gi2.png")
sheila.photo.attach(io: sheila_image, filename: 'sheila.jpg', content_type: 'image/jpg')


eli = Superhero.create!(
  name: "Eli",
  user: fabienuser,
  description: "I am living in between Indonesia and India working to launch our travel programs working with small rural communities for Troveko. At the same time, I am building a digital product development consultancy focused on prototyping a sustainable future. Digital products that drive impact. So I am bringing together a team of strategists, designers, and developers to bring clients end-to-end product builds. My background is as a strategy consultant, and I currently am living as a consultant, entrepreneur, and trader/investor.",
  age: 100,
  superpower: "Poops rainbows and farts glitter",
  brains: 100,
  strength: 100,
  speed: 100,
  price: 100,
  location: "Rio de Janeiro")

eli_image = URI.open("https://res.cloudinary.com/supermarket/image/upload/v1582849608/SuperMarket/248_hqckpj.png")
eli.photo.attach(io: eli_image, filename: 'eli.jpg', content_type: 'image/jpg')

paal = Superhero.create!(
  name: "Paal",
  user: ollie,
  description: "Westwing Home and Living - Business development Paymentwall - Business development Elearnhero.com - Digital marketing dynamodel.co - Digital Marketing",
  age: 100,
  superpower: "Xray vision - sees you naked",
  brains: 100,
  strength: 100,
  speed: 100,
  price: 100,
  location: "Paris")

paal_image = URI.open("https://res.cloudinary.com/supermarket/image/upload/v1582849609/SuperMarket/255_bjsy1r.png")
paal.photo.attach(io: paal_image, filename: 'paal.jpg', content_type: 'image/jpg')


allen = Superhero.create!(
  name: "Allen",
  user: fabienuser,
  description: "I previously founded a start up called Tzukuri (we made something called Unlosable Glasses) and I also worked briefly at a VC called Antler. Pursuing this to become a better product manager.",
  age: 100,
  superpower: "Can say the alphabet backwards",
  brains: 100,
  strength: 100,
  speed: 100,
  price: 100,
  location: "Reykjavík")

allen_image = URI.open("https://res.cloudinary.com/supermarket/image/upload/v1582849609/SuperMarket/256_vmcsty.png")
allen.photo.attach(io: allen_image, filename: 'allen.jpg', content_type: 'image/jpg')



puts "Superheroes are ready!"
