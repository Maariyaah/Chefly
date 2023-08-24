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
  user: chef1,
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
  user: chef9,
  bio: "Lorem ipsum"
)
chef_nine.photo.attach(io: file9, filename: "giada.jpg", content_type: "image/png")
chef_nine.save

