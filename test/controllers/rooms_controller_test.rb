require "test_helper"

class RoomsControllerTest < ActionDispatch::IntegrationTest
  # test "index" do
  #   get "/rooms.json"
  #   assert_response 200

  #   data = JSON.parse(response.body)
  #   assert_equal Room.count, data.length
  # end

  # test "create" do
  #   assert_difference "Room.count", 1 do
  #     # creates test instance of user
  #     post "/users.json", params: { name: "Test", email: "test@test.com", password: "password", password_confirmation: "password" }
  #     # logs in test instance of user
  #     post "/sessions.json", params: { email: "test@test.com", password: "password" }
  #     # recieve the JWT
  #     data = JSON.parse(response.body)
  #     jwt = data["jwt"]

  #     post "/rooms.json", params: {
  #                           user_id: current_user.id, address: "test", city: "test city", state: "TS", price: 199, description: "Test description", home_type: "House", room_type: "Test", total_occupancy: 1, total_bedrooms: 1, total_bathrooms: 1.0,
  #                         },
  #                         headers: { "Authorization" => "Bearer #{jwt}" }

  #     assert_response 200
  #   end
  # end

  # test "show" do
  #   get "/rooms/#{Room.first.id}.json"
  #   assert_response 200

  #   data = JSON.parse(response.body)
  #   assert_equal ["user_id", "address", "city", "state", "price", "description", "home_type", "room_type", "total_occupancy", "total_bedrooms", "total_bathrooms", "created_at", "updated_at"], data.keys
  # end

  # test "update" do
  #   room = Room.first
  #   patch "/rooms/#{room.id}.json", params: { city: "Updated city" }
  #   assert_response 200

  #   data = JSON.parse(response.body)
  #   assert_equal "Updated city", data["city"]
  # end

  # test "destroy" do
  #   assert_difference "Room.count", -1 do
  #     delete "/rooms/#{Room.first.id}.json", headers: { "Authorization" => "Bearer #{@jwt}" }
  #     assert_response 200
  #   end
  #   delete "/rooms/#{Room.first.id}.json"
  #   assert_response 401
  # end
end
