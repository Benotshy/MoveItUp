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
  { name: 'Concert' },
  { name: 'Conference' },
  { name: 'Meetup' }
]
types = Type.create!(types)

events = [
  { date: '2024-08-01', address: '123 Main St, City A', price: 50.0, capacity: 100, title: 'Music Concert', description: 'A great music concert.', user_id: users[0].id, type_id: types[0].id, visibility: true },
  { date: '2024-09-01', address: '456 Elm St, City B', price: 0.0, capacity: 50, title: 'Tech Conference', description: 'Tech conference with keynote speakers.', user_id: users[1].id, type_id: types[1].id, visibility: true },
  { date: '2024-10-01', address: '789 Oak St, City C', price: 20.0, capacity: 30, title: 'Startup Meetup', description: 'Networking event for startups.', user_id: users[2].id, type_id: types[2].id, visibility: true }
]

# Create Events
events = Event.create!(events)

# Create UserEvents
UserEvent.create!([
  { user_id: users[0].id, event_id: events[0].id },
  { user_id: users[1].id, event_id: events[1].id },
  { user_id: users[2].id, event_id: events[2].id }
])
