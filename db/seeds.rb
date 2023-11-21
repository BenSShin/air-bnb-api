# # Room Seeds
# Room.create!([
#   { user_id: 1, address: "123 Fake St", city: "Fakesville", state: "IL", price: 99, description: "Oh it's real nice.", home_type: "House", room_type: "Entire Home", total_occupancy: 6, total_bedrooms: 3, total_bathrooms: 2.0 },
#   { user_id: 1, address: "123 Happy St", city: "Happytown", state: "CA", price: 69, description: "Oh it's real happy.", home_type: "Townhome", room_type: "Entire Home", total_occupancy: 2, total_bedrooms: 1, total_bathrooms: 1.0 },
#   { user_id: 1, address: "123 Apartment St #55", city: "Condoburg", state: "NY", price: 199, description: "Oh it's real fancy.", home_type: "Apartment", room_type: "Entire Home", total_occupancy: 4, total_bedrooms: 2, total_bathrooms: 1.5 },
#   { user_id: 2, address: "123 Cool St", city: "Coolsville", state: "PA", price: 129, description: "Oh it's real cool.", home_type: "House", room_type: "Room", total_occupancy: 2, total_bedrooms: 1, total_bathrooms: 1.0 },
# ])

# # Room Image Seeds
# Image.create!([
#   { room_id: 1, url: "image.url" },
#   { room_id: 1, url: "image2.url" },
#   { room_id: 2, url: "image3.url" },
#   { room_id: 2, url: "image4.url" },
# ])

# # reservations seeds
# reservation = Reservation.create!([
#   {
#     user_id: 1, room_id: 1, start_date: Date.new(2024, 1, 20), end_date: Date.new(2024, 1, 28), price: 200, total: 1600 },
# {
#   user_id: 1, room_id: 1, start_date: Date.new(2024, 2, 20), end_date: Date.new(2024, 2, 28), price: 200, total: 1600}
# ])

# #creates initial users 
# User.create!([
#   { name: "Ben Shin", email: "ben@gmail.com", password: "password", password_confirmation: "password", image: "https://media.istockphoto.com/id/1425205941/photo/customer-service-sign-with-message-chat-on-dark-background-3d-render.webp?b=1&s=170667a&w=0&k=20&c=Scsdo1Ur7NZp8Vcg3anOET_Q6imb2fER4G4uiEhev64=" },
#   { name: "Steven Ungaro", email: "steven@gmail.com", password: "password", password_confirmation: "password", image: "https://media.istockphoto.com/id/1425205941/photo/customer-service-sign-with-message-chat-on-dark-background-3d-render.webp?b=1&s=170667a&w=0&k=20&c=Scsdo1Ur7NZp8Vcg3anOET_Q6imb2fER4G4uiEhev64=" },
#   { name: "Morgan Winkler", email: "morgan@gmail.com", password: "password", password_confirmation: "password", image: "https://media.istockphoto.com/id/1425205941/photo/customer-service-sign-with-message-chat-on-dark-background-3d-render.webp?b=1&s=170667a&w=0&k=20&c=Scsdo1Ur7NZp8Vcg3anOET_Q6imb2fER4G4uiEhev64=" },
# ])

# #review seeds
# Review.create!([
#   { reservation_id: 1, rating: 10, comment: "Great place to stay"},
#   { reservation_id: 2, rating: 8, comment: "Loved the view"},
# ])