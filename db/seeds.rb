## clear db
User.destroy
ChefOffer.destroy_all
  ## user admin

  chef1 = User.create(email:"avillez@chef.com", password:'123456',is_chef: true, name: 'Jose Avillez', username:'Avillez1',cuisine_preferences: 'Portuguese')
  chef2 = User.create(email:"vieira@nobu.com", password:'123456',is_chef: true, name: 'Marlene Vieira', username:'Malene.v',cuisine_preferences: 'Sushi')
  chef3 = User.create(email:"ramsey@ramsey.com", password:'123456',is_chef: true, name: 'Gordon Ramsey', username:'Ramsey',cuisine_preferences: 'Modern European')
  chef4 = User.create(email:"beatriz@lewagon.com", password:'123456',is_chef: true, name: 'Beatriz Vieira', username:'Beaa',cuisine_preferences: 'Nepalese')
  chef5 = User.create(email:"quaresma4ever@chef.com", password:'123456',is_chef: true, name: 'Antonio Quaresma', username:'Quaresma',cuisine_preferences: 'Vegan')

  ChefOffer.create(
    name: "Jose Avillez",
    cuisine_category: "Portuguese",
    dish_specialty: "Bacalhau",
    previous_work_experience: "Tasca Macau",
    rating: 5.0,
    location: "Avenida de Liberade",
    price_per_hour: 250.0,
    user: chef1
  )

 ChefOffer.create(
  name: "Marlene Vieira",
  cuisine_category: "Sushi",
  dish_specialty: "Sashimi",
  previous_work_experience: "Nobu",
  rating: 4.7,
  location: "Rua Americo Cortez Pinto",
  price_per_hour: 150.0,
  user: chef2
  )

  ChefOffer.create(
  name: "Gordon Ramsey",
  cuisine_category: "Modern European",
  dish_specialty: "Coq au Vin",
  previous_work_experience: "The Wolseley",
  rating: 4.6,
  location: "Beco do Bugio 4",
  price_per_hour: 5.0,
  user: chef3
  )

  ChefOffer.create(
  name: "Beatriz Vieira",
  cuisine_category: "Nepalese",
  dish_specialty: "Jalfrezi Curry",
  previous_work_experience: "Ola Nepal",
  rating: 5.0,
  location: "Rua do Conde",
  price_per_hour: 1000.0,
  user: chef4
  )

ChefOffer.create(
  name: "Antonio Quaresma",
  cuisine_category: "Vegan",
  dish_specialty: "Mushrooms",
  previous_work_experience: "Le Wagon",
  rating: 0.9,
  location: "Villa Franca",
  price_per_hour: 2.50,
  user: chef5
)
