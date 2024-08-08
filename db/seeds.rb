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
  { email: 'alice.jones@example.com', password: '123456' }
]

users = User.create!(users)


# Create Types
types = [
  { name: 'Music' },
  { name: 'Wellness' },
  { name: 'Community' }
  { name: 'Workshop' },
  { name: 'Tour' },
  { name: 'Show' }
]
types = Type.create!(types)

Event.create([
  {
    title: "Trip to the Moroccan Desert",
    description: "Experience the magic of the Moroccan desert with camel rides, overnight stays in Berber tents, and guided desert tours.",
    city: "Agadir",
    capacity: 25,
    date: "2024-06-15T00:00:00",
    price: 150.0,
    address: "Agadir Desert Camp, Agadir, Morocco"
  },
  {
    title: "Horse Riding by the Beach in Morocco",
    description: "Enjoy a serene horse riding experience along the beautiful beaches of Morocco, with breathtaking views and guided tours.",
    city: "Agadir",
    capacity: 15,
    date: "2024-07-20T00:00:00",
    price: 200.0,
    address: "Agadir Beach, Agadir, Morocco"
  },
  {
    title: "Sunset Yoga in Morocco",
    description: "Relax and rejuvenate with sunset yoga sessions in picturesque Moroccan locations, led by experienced instructors.",
    city: "Marrakech",
    capacity: 20,
    date: "2024-08-25T00:00:00",
    price: 300.0,
    address: "123 Medina St, Marrakech, Morocco"
  },
  {
    title: "Cultural Tour of Marrakech",
    description: "Immerse yourself in the vibrant culture of Marrakech with visits to historic sites, bustling souks, and traditional Moroccan cuisine.",
    city: "Marrakech",
    capacity: 30,
    date: "2024-09-15T00:00:00",
    price: 500.0,
    address: "789 Medina St, Marrakech, Morocco"
  },
  {
    title: "Moroccan Cooking Class",
    description: "Learn the secrets of Moroccan cuisine with hands-on cooking classes, featuring local ingredients and traditional recipes.",
    city: "Marrakech",
    capacity: 20,
    date: "2024-09-30T00:00:00",
    price: 400.0,
    address: "456 Medina St, Marrakech, Morocco"
  },
  {
    title: "Atlas Mountains Hiking Adventure",
    description: "Embark on a hiking adventure in the Atlas Mountains, exploring stunning landscapes and Berber villages.",
    city: "Marrakech",
    capacity: 25,
    date: "2024-10-10T00:00:00",
    price: 180.0,
    address: "Atlas Mountains, Marrakech, Morocco"
  },
  {
    title: "Essaouira Beach Retreat",
    description: "Relax at the beautiful beaches of Essaouira with guided tours, water sports, and cultural experiences.",
    city: "Essaouira",
    capacity: 30,
    date: "2024-10-20T00:00:00",
    price: 200.0,
    address: "Essaouira Beach, Essaouira, Morocco"
  },
  {
    title: "Casablanca City Tour",
    description: "Discover the modern and historical highlights of Casablanca with guided city tours, including visits to the Hassan II Mosque.",
    city: "Casablanca",
    capacity: 50,
    date: "2024-11-05T00:00:00",
    price: 150.0,
    address: "Casablanca City Center, Casablanca, Morocco"
  },
  {
    title: "Fes Medina Exploration",
    description: "Explore the ancient medina of Fes with guided tours, learning about its rich history, architecture, and cultural heritage.",
    city: "Fes",
    capacity: 20,
    date: "2024-11-15T00:00:00",
    price: 450.0,
    address: "Fes Medina, Fes, Morocco"
  },
  {
    title: "Rabat Historical Tour",
    description: "Visit the historical sites of Rabat, including the Royal Palace, Hassan Tower, and the Kasbah of the Udayas.",
    city: "Rabat",
    capacity: 40,
    date: "2024-11-25T00:00:00",
    price: 1000.0,
    address: "Rabat City Center, Rabat, Morocco"
  },
  {
    title: "Moroccan Hammam and Spa Day",
    description: "Indulge in a traditional Moroccan Hammam and spa experience, with luxurious treatments and relaxation.",
    city: "Marrakech",
    capacity: 10,
    date: "2024-12-05T00:00:00",
    price: 350.0,
    address: "Spa Center, Marrakech, Morocco"
  },
  {
    title: "Tangier Coastal Tour",
    description: "Explore the coastal beauty of Tangier with guided tours, cultural sites, and scenic views of the Mediterranean.",
    city: "Tangier",
    capacity: 25,
    date: "2024-12-15T00:00:00",
    price: 300.0,
    address: "Tangier Beach, Tangier, Morocco"
  },
  {
    title: "Agadir Beach and Surfing",
    description: "Enjoy the sunny beaches of Agadir with opportunities for surfing, sunbathing, and beachfront dining.",
    city: "Agadir",
    capacity: 20,
    date: "2024-12-25T00:00:00",
    price: 650.0,
    address: "Agadir Beach, Agadir, Morocco"
  },
  {
    title: "Chefchaouen Blue City Tour",
    description: "Visit the picturesque blue city of Chefchaouen, known for its charming blue-painted streets and vibrant local culture.",
    city: "Chefchaouen",
    capacity: 15,
    date: "2025-01-05T00:00:00",
    price: 150.0,
    address: "Chefchaouen City Center, Chefchaouen, Morocco"
  },
  {
    title: "Ouarzazate Film Studio Tour",
    description: "Explore the famous film studios of Ouarzazate, known as the Hollywood of Morocco, with guided tours of movie sets and studios.",
    city: "Ouarzazate",
    capacity: 30,
    date: "2025-01-15T00:00:00",
    price: 200.0,
    address: "Film Studios, Ouarzazate, Morocco"
  },
  {
    title: "Meknes Historical Excursion",
    description: "Discover the historical sites of Meknes, including the impressive Bab Mansour gate and the Royal Stables.",
    city: "Meknes",
    capacity: 25,
    date: "2025-01-25T00:00:00",
    price: 400.0,
    address: "Meknes City Center, Meknes, Morocco"
  },
  {
    title: "Moroccan Art and Handicrafts Workshop",
    description: "Learn about traditional Moroccan art and handicrafts with hands-on workshops and visits to artisan markets.",
    city: "Marrakech",
    capacity: 20,
    date: "2025-02-05T00:00:00",
    price: 500.0,
    address: "Artisan Market, Marrakech, Morocco"
  },
  {
    title: "Dades Valley and Todra Gorge Tour",
    description: "Explore the stunning landscapes of the Dades Valley and Todra Gorge with guided tours and hiking adventures.",
    city: "Tinghir",
    capacity: 30,
    date: "2025-02-15T00:00:00",
    price: 150.0,
    address: "Dades Valley, Tinghir, Morocco"
  }])

# Create Events
events = Event.create!(events)

# Create UserEvents
UserEvent.create!([
  { user_id: users[0].id, event_id: events[0].id },
  { user_id: users[1].id, event_id: events[1].id },
  { user_id: users[2].id, event_id: events[2].id }
])
