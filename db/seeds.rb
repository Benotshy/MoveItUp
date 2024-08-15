# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb

# Clear existing data
UserEvent.destroy_all
Event.destroy_all
Type.destroy_all
User.destroy_all

# Create Users
users = [
  { email: 'john.doe@example.com', password: '123456' },
  { email: 'jane.smith@example.com', password: '123456' },
  { email: 'alice.jones@example.com', password: '123456' },
  { email: 'othmanebenchekroun@gmail.com', password: '123456' },
  { email: 'sara.bouiala@gmail.com', password: '123456' },
]

users = User.create!(users)


# Create Types
types = [
  { name: 'Music' },
  { name: 'Show' },
  { name: 'Wellness' },
  { name: 'Tours' },
  { name: 'Workshops' },
  { name: 'Community' }
]
types = Type.create!(types)

events = [
  {
    date: DateTime.new(2024, 9, 15, 18, 30),
    address: "Boulevard Pasteur, Tangier",
    price: 150.0,
    capacity: 200,
    title: "Sunset Yoga on the Beach",
    description: "Join us for a relaxing yoga session on Tangier's beautiful beach as the sun sets over the horizon.",
    city: "Tangier",
    visibility: true,
    user_id: users[2].id,
    type_id: 3
  },
  {
    date: DateTime.new(2024, 8, 20, 21, 00),
    address: "Theatro Nightclub, Marrakech",
    price: 300.0,
    capacity: 500,
    title: "Afrobeat Night",
    description: "Dance the night away to the best Afrobeat tunes at Marrakech's hottest nightclub.",
    city: "Marrakech",
    visibility: true,
    user_id: users[3].id,
    type_id: 1
  },
  {
    date: DateTime.new(2024, 10, 1, 10, 00),
    address: "Jardin Majorelle, Marrakech",
    price: 75.0,
    capacity: 50,
    title: "Mindfulness Workshop in the Garden",
    description: "A peaceful mindfulness workshop held in the serene surroundings of Jardin Majorelle.",
    city: "Marrakech",
    visibility: true,
    user_id: users[4].id,
    type_id: 3
  },
  {
    date: DateTime.new(2024, 8, 25, 19, 00),
    address: "The Roof, Casablanca",
    price: 200.0,
    capacity: 150,
    title: "Rooftop Acoustic Concert",
    description: "Enjoy an intimate acoustic concert under the stars at The Roof in Casablanca.",
    city: "Casablanca",
    visibility: true,
    user_id: users[1].id,
    type_id: 1
  },
  {
    date: DateTime.new(2024, 9, 12, 16, 00),
    address: "Plage d'Agadir, Agadir",
    price: 50.0,
    capacity: 100,
    title: "Beach Cleanup and BBQ",
    description: "Join the community for a beach cleanup followed by a BBQ at Agadir's popular beach.",
    city: "Agadir",
    visibility: true,
    user_id: users[3].id,
    type_id: 5
  },
  {
    date: DateTime.new(2024, 9, 18, 20, 00),
    address: "Le Studio des Arts Vivants, Casablanca",
    price: 250.0,
    capacity: 300,
    title: "Comedy Night Extravaganza",
    description: "An evening of laughs with some of Morocco's best comedians at Le Studio des Arts Vivants.",
    city: "Casablanca",
    visibility: true,
    user_id: users[1].id,
    type_id: 2
  },
  {
    date: DateTime.new(2024, 10, 5, 8, 00),
    address: "Atlas Mountains, Marrakech",
    price: 500.0,
    capacity: 20,
    title: "Hiking Tour in the Atlas Mountains",
    description: "A guided hiking tour through the breathtaking landscapes of the Atlas Mountains.",
    city: "Marrakech",
    visibility: true,
    user_id: users[4].id,
    type_id: 4
  },
  {
    date: DateTime.new(2024, 9, 20, 9, 00),
    address: "Chellah Gardens, Rabat",
    price: 0.0,
    capacity: 100,
    title: "Community Garden Day",
    description: "Spend a day volunteering in the beautiful Chellah Gardens and help maintain this historic site.",
    city: "Rabat",
    visibility: true,
    user_id: users[2].id,
    type_id: 6
  },
  {
    date: DateTime.new(2024, 8, 28, 14, 00),
    address: "Café Clock, Fes",
    price: 200.0,
    capacity: 40,
    title: "Moroccan Cooking Workshop",
    description: "Learn to cook traditional Moroccan dishes with a local chef at Café Clock.",
    city: "Fes",
    visibility: true,
    user_id: users[2].id,
    type_id: 5
  },
  {
    date: DateTime.new(2024, 9, 25, 17, 00),
    address: "Le Scène Nationale, Rabat",
    price: 150.0,
    capacity: 250,
    title: "Traditional Moroccan Music Concert",
    description: "Experience the rich sounds of traditional Moroccan music at Le Scène Nationale in Rabat.",
    city: "Rabat",
    visibility: true,
    user_id: users[2].id,
    type_id: 1
  },
  {
    date: DateTime.new(2024, 10, 10, 19, 00),
    address: "Sofitel, Essaouira",
    price: 400.0,
    capacity: 100,
    title: "Wellness Retreat by the Sea",
    description: "A three-day wellness retreat focusing on relaxation and rejuvenation by the Atlantic Ocean.",
    city: "Essaouira",
    visibility: true,
    user_id: users[2].id,
    type_id: 3
  },
  {
    date: DateTime.new(2024, 8, 15, 18, 00),
    address: "Marrakech Museum, Marrakech",
    price: 100.0,
    capacity: 200,
    title: "Marrakech Art Walk",
    description: "A guided tour of Marrakech's best art galleries and museums, including exclusive access to exhibitions.",
    city: "Marrakech",
    visibility: true,
    user_id: users[2].id,
    type_id: 4
  },
  {
    date: DateTime.new(2024, 9, 29, 20, 00),
    address: "Dar Souiri, Essaouira",
    price: 150.0,
    capacity: 100,
    title: "Gnaoua Music Night",
    description: "A night of traditional Gnaoua music in the historic venue of Dar Souiri.",
    city: "Essaouira",
    visibility: true,
    user_id: users[2].id,
    type_id: 1
  },
  {
    date: DateTime.new(2024, 10, 15, 15, 00),
    address: "Kasbah Museum, Tangier",
    price: 75.0,
    capacity: 60,
    title: "Tangier History Tour",
    description: "Discover the rich history of Tangier with a guided tour through the Kasbah Museum and other historic sites.",
    city: "Tangier",
    visibility: true,
    user_id: users[2].id,
    type_id: 4
  },
  {
    date: DateTime.new(2024, 8, 22, 20, 00),
    address: "Skybar, Agadir",
    price: 150.0,
    capacity: 200,
    title: "Sunset Party",
    description: "Enjoy a vibrant sunset party with DJ sets and cocktails at Skybar in Agadir.",
    city: "Agadir",
    visibility: true,
    user_id: users[2].id,
    type_id: 1
  },
  {
    date: DateTime.new(2024, 9, 5, 17, 00),
    address: "Riad El Fenn, Marrakech",
    price: 500.0,
    capacity: 100,
    title: "Moroccan Calligraphy Workshop",
    description: "Learn the art of Moroccan calligraphy in an intimate workshop at the beautiful Riad El Fenn.",
    city: "Marrakech",
    visibility: true,
    user_id: users[2].id,
    type_id: 5
  },
  {
    date: DateTime.new(2024, 9, 18, 18, 00),
    address: "Atlas Golf Marrakech",
    price: 250.0,
    capacity: 100,
    title: "Wellness and Golf Retreat",
    description: "A weekend retreat combining wellness activities and golf at the luxurious Atlas Golf Marrakech.",
    city: "Marrakech",
    visibility: true,
    user_id: users[2].id,
    type_id: 3
  },
  {
    date: DateTime.new(2024, 10, 12, 12, 00),
    address: "Plaza de Toros, Tangier",
    price: 100.0,
    capacity: 500,
    title: "International Food Festival",
    description: "A culinary adventure showcasing the best international cuisines at Tangier's iconic Plaza de Toros.",
    city: "Tangier",
    visibility: true,
    user_id: users[2].id,
    type_id: 6
  },
  {
    date: DateTime.new(2024, 8, 27, 19, 00),
    address: "Royal Mansour, Marrakech",
    price: 750.0,
    capacity: 50,
    title: "Luxury Spa Experience",
    description: "Indulge in a luxury spa experience with world-class treatments at the Royal Mansour.",
    city: "Marrakech",
    visibility: true,
    user_id: users[2].id,
    type_id: 3
  },
  {
    date: DateTime.new(2024, 9, 11, 20, 00),
    address: "Sofitel Rabat, Rabat",
    price: 300.0,
    capacity: 150,
    title: "Jazz Night at the Sofitel",
    description: "A smooth jazz night at the Sofitel Rabat with live performances and gourmet dining.",
    city: "Rabat",
    visibility: true,
    user_id: users[2].id,
    type_id: 1
  },
  {
    date: DateTime.new(2024, 9, 7, 9, 00),
    address: "Oukaimeden, Marrakech",
    price: 400.0,
    capacity: 20,
    title: "Mountain Biking Adventure",
    description: "A thrilling mountain biking adventure through the rugged terrains of Oukaimeden.",
    city: "Marrakech",
    visibility: true,
    user_id: users[2].id,
    type_id: 4
  },
  {
    date: DateTime.new(2024, 8, 30, 18, 00),
    address: "Café Hafa, Tangier",
    price: 50.0,
    capacity: 100,
    title: "Poetry Reading at Café Hafa",
    description: "An evening of poetry readings at the historic Café Hafa, overlooking the Mediterranean.",
    city: "Tangier",
    visibility: true,
    user_id: users[2].id,
    type_id: 6
  },
  {
    date: DateTime.new(2024, 9, 23, 21, 00),
    address: "Essaouira Beach, Essaouira",
    price: 100.0,
    capacity: 200,
    title: "Full Moon Beach Party",
    description: "Celebrate the full moon with a beach party featuring live music and dancing under the stars.",
    city: "Essaouira",
    visibility: true,
    user_id: users[2].id,
    type_id: 6
  },
  {
    date: DateTime.new(2024, 8, 26, 10, 00),
    address: "Le Comptoir Darna, Marrakech",
    price: 250.0,
    capacity: 30,
    title: "Moroccan Tea Ceremony Workshop",
    description: "Learn the traditional Moroccan tea ceremony in an authentic setting at Le Comptoir Darna.",
    city: "Marrakech",
    visibility: true,
    user_id: users[2].id,
    type_id: 5
  },
  {
    date: DateTime.new(2024, 9, 16, 18, 00),
    address: "Villa des Arts, Casablanca",
    price: 100.0,
    capacity: 100,
    title: "Art Exhibition: Modern Morocco",
    description: "Explore the vibrant world of modern Moroccan art at the Villa des Arts in Casablanca.",
    city: "Casablanca",
    visibility: true,
    user_id: users[2].id,
    type_id: 4
  },
  {
    date: DateTime.new(2024, 10, 3, 9, 00),
    address: "Plage Rouge, Marrakech",
    price: 150.0,
    capacity: 500,
    title: "Pool Party at Plage Rouge",
    description: "A day of fun and relaxation at Marrakech's most famous pool party venue, Plage Rouge.",
    city: "Marrakech",
    visibility: true,
    user_id: users[1].id,
    type_id: 1
  },
  {
    date: DateTime.new(2024, 8, 18, 20, 00),
    address: "Palais des Congrès, Marrakech",
    price: 500.0,
    capacity: 2000,
    title: "Moroccan Fashion Show",
    description: "Witness the latest trends in Moroccan fashion at a grand fashion show at Palais des Congrès.",
    city: "Marrakech",
    visibility: true,
    user_id: users[2].id,
    type_id: 2
  },
  {
    date: DateTime.new(2024, 9, 21, 15, 00),
    address: "Theatre Mohammed V, Rabat",
    price: 200.0,
    capacity: 1000,
    title: "Classical Music Concert",
    description: "An elegant evening of classical music performed by Morocco's finest musicians at Theatre Mohammed V.",
    city: "Rabat",
    visibility: true,
    user_id: users[2].id,
    type_id: 1
  },
  {
    date: DateTime.new(2024, 9, 10, 19, 00),
    address: "Le Buddha-Bar, Marrakech",
    price: 350.0,
    capacity: 300,
    title: "Electro Lounge Night",
    description: "Chill out to the smooth sounds of electronic lounge music at Le Buddha-Bar in Marrakech.",
    city: "Marrakech",
    visibility: true,
    user_id: users[1].id,
    type_id: 2
  },
  {
    date: DateTime.new(2024, 10, 8, 16, 00),
    address: "Rabat Medina, Rabat",
    price: 50.0,
    capacity: 100,
    title: "Rabat Medina Walking Tour",
    description: "Explore the history and culture of Rabat Medina with a guided walking tour through its narrow streets.",
    city: "Rabat",
    visibility: true,
    user_id: users[0].id,
    type_id: 4
  }
]


# Create Events
events = Event.create!(events)

# Create UserEvents
UserEvent.create!([
  { user_id: users[0].id, event_id: events[0].id },
  { user_id: users[1].id, event_id: events[1].id },
  { user_id: users[2].id, event_id: events[2].id }
])
