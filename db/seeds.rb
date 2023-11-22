# User Seeds
User.create!([
  { name: "Ben Shin", email: "ben@gmail.com", password: "password", password_confirmation: "password", image: "https://media.istockphoto.com/id/1425205941/photo/customer-service-sign-with-message-chat-on-dark-background-3d-render.webp?b=1&s=170667a&w=0&k=20&c=Scsdo1Ur7NZp8Vcg3anOET_Q6imb2fER4G4uiEhev64=" },
  { name: "Steven Ungaro", email: "steven@gmail.com", password: "password", password_confirmation: "password", image: "https://media.istockphoto.com/id/1425205941/photo/customer-service-sign-with-message-chat-on-dark-background-3d-render.webp?b=1&s=170667a&w=0&k=20&c=Scsdo1Ur7NZp8Vcg3anOET_Q6imb2fER4G4uiEhev64=" },
  { name: "Morgan Winkler", email: "morgan@gmail.com", password: "password", password_confirmation: "password", image: "https://media.istockphoto.com/id/1425205941/photo/customer-service-sign-with-message-chat-on-dark-background-3d-render.webp?b=1&s=170667a&w=0&k=20&c=Scsdo1Ur7NZp8Vcg3anOET_Q6imb2fER4G4uiEhev64=" },
])

# Room Seeds
Room.create!([
  { user_id: 1, address: "123 Fake St", city: "Fakesville", state: "IL", price: 99, description: "Oh it's real nice.", home_type: "House", room_type: "Entire Home", total_occupancy: 6, total_bedrooms: 3, total_bathrooms: 2.0 },
  { user_id: 1, address: "123 Happy St", city: "Happytown", state: "CA", price: 69, description: "Oh it's real happy.", home_type: "Townhome", room_type: "Entire Home", total_occupancy: 2, total_bedrooms: 1, total_bathrooms: 1.0 },
  { user_id: 1, address: "123 Apartment St #55", city: "Condoburg", state: "NY", price: 199, description: "Oh it's real fancy.", home_type: "Apartment", room_type: "Entire Home", total_occupancy: 4, total_bedrooms: 2, total_bathrooms: 1.5 },
  { user_id: 2, address: "123 Cool St", city: "Coolsville", state: "PA", price: 129, description: "Oh it's real cool.", home_type: "House", room_type: "Room", total_occupancy: 2, total_bedrooms: 1, total_bathrooms: 1.0 },
  { user_id: 3, address: "123 Fake St", city: "Fakesville", state: "IL", price: 99, description: "Oh it's real nice.", home_type: "House", room_type: "Entire Home", total_occupancy: 6, total_bedrooms: 3, total_bathrooms: 2.0 },
  { user_id: 1, address: "222 Baker St", city: "London", state: "IL", price: 79, description: "Oh it's real great.", home_type: "Apartment", room_type: "Entire Home", total_occupancy: 3, total_bedrooms: 2, total_bathrooms: 2.0 },
  { user_id: 3, address: "55 Cheesburger St", city: "Hamburg", state: "NY", price: 155, description: "Oh it's real delicious.", home_type: "House", room_type: "Room", total_occupancy: 1, total_bedrooms: 1, total_bathrooms: 1 },
  { user_id: 2, address: "7929 Eldorado St", city: "El Dorado", state: "CA", price: 499, description: "Oh it's real gold.", home_type: "House", room_type: "Entire Home", total_occupancy: 16, total_bedrooms: 8, total_bathrooms: 5.5 },
  { user_id: 1, address: "1111 Sesame St #123", city: "Kansas City", state: "MO", price: 99, description: "Oh it's real fun.", home_type: "Apartment", room_type: "Entire Home", total_occupancy: 4, total_bedrooms: 3, total_bathrooms: 2.5 },
  { user_id: 1, address: "71 29th St Apt #B", city: "Happytown", state: "CA", price: 89, description: "Oh it's real neat.", home_type: "Townhome", room_type: "Entire Home", total_occupancy: 2, total_bedrooms: 1, total_bathrooms: 1.0 },
  { user_id: 1, address: "66 Condo Ln #4A", city: "Wherever", state: "TX", price: 129, description: "Oh it's real nifty.", home_type: "Apartment", room_type: "Room", total_occupancy: 1, total_bedrooms: 1, total_bathrooms: 1.0 },
  { user_id: 2, address: "87777 Awesome Avenue", city: "Townsville", state: "NY", price: 249, description: "Oh it's real awesome.", home_type: "House", room_type: "Room", total_occupancy: 4, total_bedrooms: 1, total_bathrooms: 1.0 },
  { user_id: 1, address: "1234 Alphabet St", city: "Fakesville", state: "IL", price: 99, description: "Oh it's real good.", home_type: "House", room_type: "Entire Home", total_occupancy: 5, total_bedrooms: 3, total_bathrooms: 2.0 },
  { user_id: 3, address: "4444 La Croix St #3", city: "Water", state: "WI", price: 19, description: "Oh it's real fizzy.", home_type: "Townhome", room_type: "Entire Home", total_occupancy: 2, total_bedrooms: 1, total_bathrooms: 1.0 },
])

# Room Image Seeds
Image.create!([
  { room_id: 1, url: "image.url" },
  { room_id: 1, url: "image2.url" },
  { room_id: 2, url: "image3.url" },
  { room_id: 2, url: "image4.url" },
])

# Reservation Seeds
Reservation.create!([
  {
    user_id: 1, room_id: 1, start_date: Date.new(2024, 1, 20), end_date: Date.new(2024, 1, 28), price: 200, total: 1600,
  },
  {
    user_id: 1, room_id: 1, start_date: Date.new(2024, 2, 20), end_date: Date.new(2024, 2, 28), price: 200, total: 1600,
  },
])

# Review Seeds
Review.create!([
  { reservation_id: 1, rating: 10, comment: "Great place to stay" },
  { reservation_id: 2, rating: 8, comment: "Loved the view" },
])
