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
  { email: 'othmanebenchekroun@gmail.com', password: '123456' }
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
  { date: '2024-08-01', address: '123 Main St, City A', price: 50.0, capacity: 100, title: 'Grand Music Concert Featuring Top Artists from Around the World', description: 'Join us for an unforgettable evening of music with top artists from around the globe. Enjoy a night filled with energetic performances, impressive stage setups, and a vibrant atmosphere.', user_id: users[0].id, type_id: types[0].id, visibility: true },
  { date: '2024-09-01', address: '456 Elm St, City B', price: 0.0, capacity: 50, title: 'Annual Tech Conference with Insightful Keynote Speakers and Panels', description: 'Attend our annual tech conference where industry leaders and experts will share their knowledge through keynote speeches, panel discussions, and interactive sessions. Perfect for tech enthusiasts and professionals alike.', user_id: users[1].id, type_id: types[1].id, visibility: true },
  { date: '2024-10-01', address: '789 Oak St, City C', price: 20.0, capacity: 30, title: 'Networking Meetup for Startups: Connect with Innovators and Entrepreneurs', description: 'This event is designed for startup founders and entrepreneurs to connect, share ideas, and explore potential collaborations. Network with like-minded individuals in an engaging and supportive environment.', user_id: users[2].id, type_id: types[2].id, visibility: true },
  { date: '2024-11-01', address: '321 Pine St, City D', price: 10.0, capacity: 50, title: 'Local Art Exhibition Showcasing a Diverse Range of Artistic Styles and Mediums', description: 'Experience a vibrant display of local artistry at our art exhibition. The event features a diverse range of artworks from emerging and established artists, offering something for every art lover.', user_id: users[0].id, type_id: types[0].id, visibility: true },
  { date: '2024-12-01', address: '654 Cedar St, City E', price: 0.0, capacity: 20, title: 'Interactive Workshop for Skill Development and Personal Growth', description: 'Participate in hands-on activities and interactive sessions aimed at skill development and personal growth. This workshop offers practical exercises and expert guidance to help you acquire new skills.', user_id: users[1].id, type_id: types[1].id, visibility: true },
  { date: '2025-01-01', address: '987 Maple St, City F', price: 15.0, capacity: 40, title: 'Exclusive Film Screening of a Critically Acclaimed Movie with Director Q&A', description: 'Join us for a special screening of a critically acclaimed film, followed by a Q&A session with the director. Enjoy an evening of cinematic excellence and gain insights into the filmmaking process.', user_id: users[2].id, type_id: types[2].id, visibility: true },
  { date: '2025-02-01', address: '246 Oak St, City G', price: 5.0, capacity: 60, title: 'Monthly Book Club Meeting with Discussion on the Latest Bestselling Novel', description: 'Engage in an enriching discussion about the latest bestselling novel at our monthly book club meeting. Share your thoughts, connect with fellow book lovers, and delve into the world of literature.', user_id: users[0].id, type_id: types[0].id, visibility: true },
  { date: '2025-03-01', address: '135 Elm St, City H', price: 25.0, capacity: 30, title: 'Annual Food Festival Celebrating Local Cuisine and Culinary Talent', description: 'Savor delicious dishes from local restaurants and food vendors at our annual food festival. Enjoy a variety of culinary delights and experience the vibrant flavors of the community.', user_id: users[1].id, type_id: types[1].id, visibility: true },
  { date: '2025-04-01', address: '864 Pine St, City I', price: 0.0, capacity: 50, title: 'Charity Run for a Good Cause: Participate and Support a Worthy Cause', description: 'Join us for a charity run event and support a worthy cause. Participate in a fun and rewarding run, connect with fellow participants, and contribute to a meaningful charitable initiative.', user_id: users[2].id, type_id: types[2].id, visibility: true },
  { date: '2025-05-01', address: '753 Cedar St, City J', price: 20.0, capacity: 25, title: 'Panel Discussion on Emerging Trends and Innovations in Technology', description: 'Attend a panel discussion featuring industry experts who will explore emerging trends and innovations in technology. Gain valuable insights and participate in a thought-provoking conversation.', user_id: users[0].id, type_id: types[0].id, visibility: true },
  { date: '2025-06-01', address: '982 Oak St, City K', price: 8.0, capacity: 35, title: 'Hackathon Event: Compete and Innovate in a 24-Hour Coding Challenge', description: 'Test your coding skills in an intense 24-hour hackathon. Collaborate with other developers, solve challenges, and showcase your innovative solutions in a competitive environment.', user_id: users[1].id, type_id: types[1].id, visibility: true },
  { date: '2025-07-01', address: '641 Pine St, City L', price: 30.0, capacity: 45, title: 'Fashion Show: Explore the Latest Trends and Collections from Top Designers', description: 'Witness the latest fashion trends and collections at our fashion show. Enjoy a glamorous event featuring designs from top designers and immerse yourself in the world of fashion.', user_id: users[2].id, type_id: types[2].id, visibility: true },
  { date: '2025-08-01', address: '320 Elm St, City M', price: 12.0, capacity: 55, title: 'Gaming Tournament: Compete in Popular Video Games for Exciting Prizes', description: 'Join our gaming tournament and compete in popular video games for a chance to win exciting prizes. Enjoy a fun and competitive atmosphere with fellow gamers and gaming enthusiasts.', user_id: users[0].id, type_id: types[0].id, visibility: true },
  { date: '2025-09-01', address: '159 Cedar St, City N', price: 18.0, capacity: 30, title: 'Art Workshop: Learn New Techniques and Improve Your Artistic Skills', description: 'Participate in an art workshop designed to help you learn new techniques and improve your artistic skills. Engage with experienced instructors and create your own masterpieces in a supportive setting.', user_id: users[1].id, type_id: types[1].id, visibility: true },
  { date: '2025-10-01', address: '876 Pine St, City O', price: 0.0, capacity: 40, title: 'Fitness Class: Enjoy a Fun and Energizing Workout Session', description: 'Get fit and have fun with our fitness class. Experience a high-energy workout session that caters to all fitness levels, and leave feeling refreshed and motivated.', user_id: users[2].id, type_id: types[2].id, visibility: true },
  { date: '2025-11-01', address: '543 Elm St, City P', price: 22.0, capacity: 35, title: 'Technology Expo: Discover the Latest Innovations and Gadgets', description: 'Explore cutting-edge technology and innovative gadgets at our technology expo. Connect with tech enthusiasts and industry leaders, and discover the future of technology.', user_id: users[0].id, type_id: types[0].id, visibility: true },
  { date: '2025-12-01', address: '987 Oak St, City Q', price: 7.0, capacity: 50, title: 'Language Exchange Event: Practice and Improve Your Language Skills', description: 'Participate in a language exchange event where you can practice and improve your language skills. Meet native speakers and fellow learners in an interactive and engaging environment.', user_id: users[1].id, type_id: types[1].id, visibility: true },
  { date: '2026-01-01', address: '654 Pine St, City R', price: 28.0, capacity: 30, title: 'Music Festival: Enjoy Live Performances by Renowned Artists', description: 'Attend our music festival and enjoy live performances by renowned artists. Experience an unforgettable event filled with incredible music, vibrant crowds, and a festive atmosphere.', user_id: users[2].id, type_id: types[2].id, visibility: true },
  { date: '2026-02-01', address: '321 Elm St, City S', price: 9.0, capacity: 40, title: 'Coding Workshop: Enhance Your Coding Skills with Expert Instruction', description: 'Join our coding workshop to enhance your programming skills. Learn from industry experts through hands-on exercises and gain practical knowledge to advance your coding career.', user_id: users[0].id, type_id: types[0].id, visibility: true },
  { date: '2026-03-01', address: '987 Cedar St, City T', price: 15.0, capacity: 25, title: 'International Film Festival: Screening of Award-Winning Films', description: 'Experience a selection of award-winning films from around the world at our international film festival. Enjoy diverse cinematic experiences and immerse yourself in global storytelling.', user_id: users[1].id, type_id: types[1].id, visibility: true },
  { date: '2026-04-01', address: '654 Pine St, City U', price: 0.0, capacity: 35, title: 'Professional Networking Event: Expand Your Network and Meet Key Industry Players', description: 'Attend our professional networking event to expand your network and meet key players in your industry. Connect with professionals, exchange ideas, and explore new opportunities.', user_id: users[2].id, type_id: types[2].id, visibility: true },
  { date: '2026-05-01', address: '321 Elm St, City V', price: 20.0, capacity: 30, title: 'Engaging Panel Debate on Current Social Issues with Expert Opinions', description: 'Participate in an engaging panel debate on current social issues. Hear from experts, join the discussion, and gain new perspectives on important topics affecting society.', user_id: users[0].id, type_id: types[0].id, visibility: true },
  { date: '2026-06-01', address: '987 Cedar St, City W', price: 6.0, capacity: 40, title: 'Startup Pitch Competition: Showcase Your Idea to Investors and Industry Leaders', description: 'Present your startup idea at our pitch competition and receive feedback from investors and industry leaders. This event offers a platform to showcase your innovation and attract potential investors.', user_id: users[1].id, type_id: types[1].id, visibility: true },
  { date: '2026-07-01', address: '654 Pine St, City X', price: 25.0, capacity: 35, title: 'Food Tasting Event: Experience Culinary Delights from Local Chefs', description: 'Enjoy a food tasting event featuring culinary delights from local chefs. Sample a variety of dishes, meet the chefs, and experience the rich flavors of the local food scene.', user_id: users[2].id, type_id: types[2].id, visibility: true },
  { date: '2026-08-01', address: '321 Elm St, City Y', price: 11.0, capacity: 45, title: 'Art Auction: Bid on Unique Artworks and Support Emerging Artists', description: 'Participate in our art auction and bid on unique artworks from emerging artists. Support the artistic community and acquire one-of-a-kind pieces for your collection.', user_id: users[0].id, type_id: types[0].id, visibility: true },
  { date: '2026-09-01', address: '987 Cedar St, City Z', price: 17.0, capacity: 30, title: 'Fashion Workshop: Learn Fashion Design Techniques from Industry Experts', description: 'Join our fashion workshop to learn design techniques from industry experts. Enhance your fashion skills, create your own designs, and gain valuable insights into the world of fashion.', user_id: users[1].id, type_id: types[1].id, visibility: true },
  { date: '2026-10-01', address: '654 Pine St, City AA', price: 0.0, capacity: 40, title: 'Yoga Retreat: Rejuvenate Your Mind and Body with Relaxing Yoga Sessions', description: 'Experience relaxation and rejuvenation at our yoga retreat. Participate in calming yoga sessions, connect with like-minded individuals, and enjoy a peaceful retreat in a serene setting.', user_id: users[2].id, type_id: types[2].id, visibility: true }
]


# Create Events
events = Event.create!(events)

# Create UserEvents
UserEvent.create!([
  { user_id: users[0].id, event_id: events[0].id },
  { user_id: users[1].id, event_id: events[1].id },
  { user_id: users[2].id, event_id: events[2].id }
])
