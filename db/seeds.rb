## clear db
require "open-uri"

puts 'Dropping elements from database...'
sleep(0.5)
puts '....'

ChefOffer.destroy_all
User.destroy_all
## user admin

chef1 = User.create(email:"avillez@chef.com", password:'123456',is_chef: true, name: 'Jose Avillez', username:'Avillez1',cuisine_preferences: 'Portuguese')
puts "#{chef1.name} was created!"
chef2 = User.create(email:"vieira@nobu.com", password:'123456',is_chef: true, name: 'Marlene Vieira', username:'Malene.v',cuisine_preferences: 'Sushi')
puts "#{chef2.name} was created!"
chef4 = User.create(email:"beatriz@lewagon.com", password:'123456',is_chef: true, name: 'Beatriz Vieira', username:'Beaa',cuisine_preferences: 'Nepalese')
chef5 = User.create(email:"quaresma4ever@chef.com", password:'123456',is_chef: true, name: 'Antonio Quaresma', username:'Quaresma',cuisine_preferences: 'Vegan')
puts "chef 5 is created"
chef6 = User.create(email:"jamie.oliver@chef.com", password:'123456',is_chef: true, name: 'Jamie Oliver', username:'Jamie.O',cuisine_preferences: 'Modern British')
chef7 = User.create(email: "giadi@chef.com", password:'123456',is_chef: true, name: 'Giada De Laurentiis', username:'GiadidL',cuisine_preferences: 'Italian')
chef8 = User.create(email: "wolfie@chef.com", password:'123456',is_chef: true, name: 'Wolfgang Puck', username:'Wolfie',cuisine_preferences: 'French-Asian Fusion')
chef9 = User.create(email: "david@chef.com", password:'123456',is_chef: true, name: 'David Chang', username:'DavidChang',cuisine_preferences: 'American-Asian Fusion')
chef10 = User.create(email: "vikas@chef.com", password:'123456',is_chef: true, name: 'Vikas Khanna', username:'Vikas',cuisine_preferences: 'Indian')
chef11 = User.create(email: "amaury@chef.com", password:'123456',is_chef: true, name: 'Amaury Guichon', username:'Amaury',cuisine_preferences: 'Pastry')
chef12 = User.create(email: "bjorn@chef.com", password:'123456',is_chef: true, name: 'Björn Frantzén', username:'Bjorn',cuisine_preferences: 'Game')
chef13 = User.create(email: "niklas@chef.com", password:'123456',is_chef: true, name: 'Niklas Ekstedt', username:'Niklas',cuisine_preferences: 'Outdoors Cooking')
chef14 = User.create(email: "christian@chef.com", password:'123456',is_chef: true, name: 'Christian Hellberg', username:'Christian',cuisine_preferences: 'Scandinavian Fusion')
chef15 = User.create(email: "mikael@chef.com", password:'123456',is_chef: true, name: 'Mikael Jonsson', username:'Mikael',cuisine_preferences: 'Paleo')
chef16 = User.create(email: "magnus@chef.com", password:'123456',is_chef: true, name: 'Magnus Nilsson', username:'Magnus',cuisine_preferences: 'New Nordic Cuisine')
chef17 = User.create(email: "kenneth@chef.com", password:'123456',is_chef: true, name: 'Kenneth Stuen', username:'Kenneth',cuisine_preferences: 'Chinese')

puts "chef 17 is created"

file = URI.open('https://res.cloudinary.com/dxl592x6b/image/upload/v1692711857/Chefly/jose.jpg')
chef_one = ChefOffer.new(
  name: "Jose Avillez",
  cuisine_category: "Portuguese",
  dish_specialty: "Bacalhau",
  previous_work_experience: "Tasca Macau, Tasca London and Belcanto",
  rating: 5.0,
  address: "Avenida de Liberade",
  location: "Avenida de Liberade",
  price_per_hour: 250.0,
  address: "Rua do conde Redondo",
  user: chef1,
  location: "Avenida da Liberdade",
  bio: "Lorem ipsum"

)

chef_one.photo.attach(io: file, filename: "jose.jpg", content_type: "image/png")
chef_one.save

file2 = URI.open('https://res.cloudinary.com/dxl592x6b/image/upload/v1692711857/Chefly/marlene.jpg')

puts "chef one done"
chef_two = ChefOffer.new(
  name: "Marlene Vieira",
  cuisine_category: "Sushi",
  dish_specialty: "Sashimi",
  previous_work_experience: "Nobu, Hakkassan and Unique Sushi Lab",
  rating: 4.7,
  address: "Rua Armando Ferreira",
  location: "Rua Armando Ferreira",
  address: "Alfama",
  price_per_hour: 150.0,
  user: chef2,
  bio: "Lorem ipsum"
)
chef_two.photo.attach(io: file2, filename: "marlene.jpg", content_type: "image/png")
chef_two.save

puts "chef two done"

file4 = URI.open('https://res.cloudinary.com/dxl592x6b/image/upload/v1692829955/230810_20Le_20Wagon_67-X3_ghqnln.jpg')

chef_four = ChefOffer.new(
  name: "Beatriz Vieira",
  cuisine_category: "Nepalese",
  dish_specialty: "Jalfrezi Curry",
  previous_work_experience: "Ola Nepal, Sabor de Nepal and Sherpa",
  rating: 5.0,
  address: "Rua do Conde",
  location: "Rua do Conde",
  address: "Alfama",
  price_per_hour: 1000.0,
  user: chef4,
  bio: "Lorem ipsum"
)
chef_four.photo.attach(io: file4, filename: "beatriz.jpg", content_type: "image/png")
chef_four.save

file5 = URI.open('https://res.cloudinary.com/dxl592x6b/image/upload/v1692829974/230810_20Le_20Wagon_73-X3_abupes.jpg')
chef_five = ChefOffer.new(
  name: "Antonio Quaresma",
  cuisine_category: "Vegan",
  dish_specialty: "Mushrooms",
  previous_work_experience: "Le Wagon, Chez Rodrigo and Go A Lisboa",
  rating: 3.5,
  address: "Villa Franca",
  location: "Villa Franca",
  address: "Alfama",
  price_per_hour: 50,
  user: chef5,
  bio: "Lorem ipsum"
)
chef_five.photo.attach(io: file5, filename: "antonio.jpg", content_type: "image/png")
chef_five.save

file6 = URI.open('https://res.cloudinary.com/dxl592x6b/image/upload/v1692821798/Jamie-Social_tc8xsy.jpg')
chef_six = ChefOffer.new(
  name: "Jamie Oliver",
  cuisine_category: "Modern British",
  dish_specialty: "Beef Wellington",
  previous_work_experience: "Jamie's Italian, Barbecoa and Fifteen",
  rating: 4.7,
  address: "Cascais",
  location: "Cascais",
  address: "Alfama",
  price_per_hour: 350,
  user: chef6,
  bio: "Lorem ipsum"
)
chef_six.photo.attach(io: file6, filename: "jamie.jpg", content_type: "image/png")
chef_six.save

file7 = URI.open('https://res.cloudinary.com/dxl592x6b/image/upload/v1692822355/giada3_v1nm2i.jpg')
chef_seven = ChefOffer.new(
  name: "Giada De Laurentiis",
  cuisine_category: "Italian",
  dish_specialty: "Pasta primavera with roasted vegetables",
  previous_work_experience: "Giada, Pronto by Giada and The Cromwell",
  rating: 4.7,
  address: "Belem",
  location: "Belem",
  address: "Alfama",
  price_per_hour: 450,
  user: chef7,
  bio: "Lorem ipsum"
)
chef_seven.photo.attach(io: file7, filename: "giada.jpg", content_type: "image/png")
chef_seven.save

file8 = URI.open('https://res.cloudinary.com/dxl592x6b/image/upload/v1692828364/5h2f2o_mwpnzt.jpg')
chef_eight = ChefOffer.new(
  name: "Wolfgang Puck",
  cuisine_category: "French-Asian Fusion",
  dish_specialty: "Chocolate Tree Bark",
  previous_work_experience: "CUT, Chinois and Spago Las Vegas",
  rating: 4.9,
  address: "Sintra",
  location: "Sintra",
  address: "Alfama",
  price_per_hour: 450,
  user: chef8,
  bio: "Lorem ipsum"
)
chef_eight.photo.attach(io: file8, filename: "wolfgang.jpg", content_type: "image/png")
chef_eight.save

file9 = URI.open('https://res.cloudinary.com/dxl592x6b/image/upload/v1692829450/david-chang-and-momofuku-deny-move-to-crown-casino-28658-3_ghyzbv.jpg')
chef_nine = ChefOffer.new(
  name: "David Chang",
  cuisine_category: "American-Asian Fusion",
  dish_specialty: "Ramen",
  previous_work_experience: "Fuku Noodle Bar and Kawi",
  rating: 4.3,
  address: "Mafra",
  location: "Mafra",
  price_per_hour: 175,
  address: "Alfama",
  user: chef9,
  bio: "Lorem ipsum"
)
chef_nine.photo.attach(io: file9, filename: "giada.jpg", content_type: "image/png")
chef_nine.save

file10 = URI.open('https://res.cloudinary.com/dxl592x6b/image/upload/v1692829146/EW-Vikas-Khanna-K_zhlti9.jpg')
chef_ten = ChefOffer.new(
  name: "Vikas Khanna",
  cuisine_category: "Indian",
  dish_specialty: "Murgh Malai Kebab",
  previous_work_experience: "Khana, Ellora and Mayura",
  rating: 4.4,
  location: "Costa da Caparica",
  address: "Alfama",
  price_per_hour: 215,
  user: chef10,
  bio: "Lorem ipsum"
)
chef_ten.photo.attach(io: file10, filename: "Vikas.jpg", content_type: "image/png")
chef_ten.save

file11 = URI.open('https://res.cloudinary.com/dxl592x6b/image/upload/v1692830298/Amauri-Guichon-4_z7p1jy.png')
chef_eleven = ChefOffer.new(
  name: "Amaury Guichon",
  cuisine_category: "Pastry",
  dish_specialty: "Chocolate sculptures",
  previous_work_experience: "The Pastry Academy",
  rating: 5.0,
  location: "Alfama",
  address: "Alfama",
  price_per_hour: 300,
  user: chef11,
  bio: "Lorem ipsum"
)
chef_eleven.photo.attach(io: file11, filename: "Amaury.jpg", content_type: "image/png")
chef_eleven.save

file12 = URI.open('https://res.cloudinary.com/dxl592x6b/image/upload/v1692872902/440px-Bj_C3_B6rn_Frantzen_vzawtu.jpg')
chef_twelve = ChefOffer.new(
  name: "Björn Frantzén",
  cuisine_category: "Game",
  dish_specialty: "Elk stew",
  previous_work_experience: "The Frantzén restaurant",
  rating: 4.8,
  address: "Arroios",
  location: "Arroios",
  price_per_hour: 420,
  user: chef12,
  bio: "Lorem ipsum"
)
chef_twelve.photo.attach(io: file12, filename: "Bjorn.jpg", content_type: "image/png")
chef_twelve.save
file13 = URI.open('https://res.cloudinary.com/dxl592x6b/image/upload/v1692873126/Sk_C3_A4rmavbild-2019-06-10-kl.-17.15.06-2-copy_t0iyci.jpg')
chef_thirteen = ChefOffer.new(
  name: "Niklas Ekstedt",
  cuisine_category: "Outdoors Cooking",
  dish_specialty: "Smoked Cuisine",
  previous_work_experience: "Lille Chèf",
  rating: 4.8,
  address: "Anjos",
  location: "Anjos",
  price_per_hour: 380,
  user: chef13,
  bio: "Lorem ipsum"
)
chef_thirteen.photo.attach(io: file13, filename: "Niklas.jpg", content_type: "image/png")
chef_thirteen.save
file14 = URI.open('https://res.cloudinary.com/dxl592x6b/image/upload/v1692873380/Christian_s56_gmty8l.jpg')
chef_fourteen = ChefOffer.new(
  name: "Christian Hellberg",
  cuisine_category: "Scandinavian Fusion",
  dish_specialty: "Boiled potato with caviar and smoked mayonnaise",
  previous_work_experience: "Griffins Steakhouse Extraordinaire",
  rating: 4.9,
  address: "Santa Cruz",
  location: "Santa Cruz",
  price_per_hour: 380,
  user: chef14,
  bio: "Lorem ipsum"
)
chef_fourteen.photo.attach(io: file14, filename: "Christian.jpg", content_type: "image/png")
chef_fourteen.save
file15 = URI.open('https://res.cloudinary.com/dxl592x6b/image/upload/v1692873532/image-21138_memibm.jpg')
chef_fifteen = ChefOffer.new(
  name: "Mikael Jonsson",
  cuisine_category: "Paleo",
  dish_specialty: "Pigeon",
  previous_work_experience: "Hedone London",
  rating: 4.6,
  address: "Pena",
  location: "Pena",
  price_per_hour: 390,
  user: chef15,
  bio: "Lorem ipsum"
)
chef_fifteen.photo.attach(io: file15, filename: "Mikael.jpg", content_type: "image/png")
chef_fifteen.save
file16 = URI.open('https://res.cloudinary.com/dxl592x6b/image/upload/v1692873695/5184_vtejp9.jpg')
chef_sixteen = ChefOffer.new(
  name: "Magnus Nilsson",
  cuisine_category: "New Nordic Cuisine",
  dish_specialty: "Poached Single Scallop",
  previous_work_experience: "Fäviken Restaurant",
  rating: 4.1,
  address: "Almada",
  location: "Almada",
  price_per_hour: 320,
  user: chef16,
  bio: "Lorem ipsum"
)
chef_sixteen.photo.attach(io: file16, filename: "Magnus.jpg", content_type: "image/png")
chef_sixteen.save
file17 = URI.open('https://res.cloudinary.com/dxl592x6b/image/upload/v1692788942/edob4vhapk8fffbarzkz.jpg')
chef_seventeen = ChefOffer.new(
  name: "Kenneth Stuen",
  cuisine_category: "Chinese",
  dish_specialty: "Smoked Chicken Gong Bao",
  previous_work_experience: "Tønsberg Chicken House",
  rating: 2.9,
  address: "Penha França",
  location: "Penha França",
  price_per_hour: 125,
  user: chef17,
  bio: "Lorem ipsum"
)
chef_seventeen.photo.attach(io: file17, filename: "Kenneth.jpg", content_type: "image/png")
chef_seventeen.save
puts "done"

