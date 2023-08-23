## clear db
require "open-uri"

puts 'Dropping elements from database...'
sleep(0.5)
puts '....'
sleep(0.5)

ChefOffer.destroy_all
User.destroy_all
## user admin

chef1 = User.create(email:"avillez@chef.com", password:'123456',is_chef: true, name: 'Jose Avillez', username:'Avillez1',cuisine_preferences: 'Portuguese')
puts "#{chef1.name} was created!"
chef2 = User.create(email:"vieira@nobu.com", password:'123456',is_chef: true, name: 'Marlene Vieira', username:'Malene.v',cuisine_preferences: 'Sushi')
puts "#{chef2.name} was created!"

chef4 = User.create(email:"beatriz@lewagon.com", password:'123456',is_chef: true, name: 'Beatriz Vieira', username:'Beaa',cuisine_preferences: 'Nepalese')
chef5 = User.create(email:"quaresma4ever@chef.com", password:'123456',is_chef: true, name: 'Antonio Quaresma', username:'Quaresma',cuisine_preferences: 'Vegan')

file = URI.open('https://res.cloudinary.com/dxl592x6b/image/upload/v1692711857/Chefly/jose.jpg')

chef_one = ChefOffer.new(
  name: "Jose Avillez",
  cuisine_category: "Portuguese",
  dish_specialty: "Bacalhau",
  previous_work_experience: "Tasca Macau",
  rating: 5.0,
  location: "Avenida de Liberade",
  price_per_hour: 250.0,
  user: chef1
)

chef_one.photo.attach(io: file, filename: "jose.jpg", content_type: "image/png")
chef_one.save

file2 = URI.open('https://res.cloudinary.com/dxl592x6b/image/upload/v1692711857/Chefly/marlene.jpg')

puts "chef one done"
chef_two = ChefOffer.new(
  name: "Marlene Vieira",
  cuisine_category: "Sushi",
  dish_specialty: "Sashimi",
  previous_work_experience: "Nobu",
  rating: 4.7,
  location: "Rua Armando Ferreira",
  price_per_hour: 150.0,
  user: chef2
)
chef_two.photo.attach(io: file2, filename: "marlene.jpg", content_type: "image/png")
chef_two.save

puts "chef two done"



file4 = URI.open('https://res.cloudinary.com/dxl592x6b/image/upload/v1692711857/Chefly/beatriz.jpg')

chef_four = ChefOffer.new(
  name: "Beatriz Vieira",
  cuisine_category: "Nepalese",
  dish_specialty: "Jalfrezi Curry",
  previous_work_experience: "Ola Nepal",
  rating: 5.0,
  location: "Rua do Conde",
  price_per_hour: 1000.0,
  user: chef4
)
chef_four.photo.attach(io: file4, filename: "beatriz.jpg", content_type: "image/png")
chef_four.save

file5 = URI.open('https://res.cloudinary.com/dxl592x6b/image/upload/v1692711857/Chefly/antonio.jpg')
chef_five = ChefOffer.new(
  name: "Antonio Quaresma",
  cuisine_category: "Vegan",
  dish_specialty: "Mushrooms",
  previous_work_experience: "Le Wagon",
  rating: 0.9,
  location: "Villa Franca",
  price_per_hour: 2.50,
  user: chef5
)
chef_five.photo.attach(io: file5, filename: "antonio.jpg", content_type:"image/png")
chef_five.save
