require "test_helper"

class ReservationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = User.create(name: "Test", email: "test@test.com", image: "image", password: "password", password_confirmation: "password")
    @room = Room.create(
      user_id: 1, address: "123 Fake St", city: "Fakesville", state: "IL", price: 99, description: "Oh it's real nice.", home_type: "House", room_type: "Entire Home", total_occupancy: 6, total_bedrooms: 3, total_bathrooms: 2.0,
    )
    post "/sessions.json", params: { email: "test@test.com", password: "password" }
    data = JSON.parse(response.body)
    @jwt = data["jwt"]
  end

  test "index" do
    get "/reservations.json", headers: { "Authorization" => "Bearer #{@jwt}" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Reservation.count, data.length
  end

  test "show" do
    get "/reservations/#{Reservation.first.id}.json", headers: { "Authorization" => "Bearer #{@jwt}" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "user_id", "room_id", "start_date", "end_date", "price", "total", "created_at", "updated_at"], data.keys
  end

  test "create" do
    assert_difference "Reservation.count", 1 do
      post "/reservations.json",
        params: { room_id: Reservation.first.id, start_date: "2024/1/20", end_date: "2024/1/25" },
        headers: { "Authorization" => "Bearer #{@jwt}" }
    end
  end

  test "update" do
    reservation = Reservation.first
    patch "/reservations/#{reservation.id}.json", headers: { "Authorization" => "Bearer #{@jwt}" }, params: { room_id: 1 }
    assert_response 200
    data = JSON.parse(response.body)
    assert_equal 2, data["room_id"]
    assert_equal 1, data["user_id"]

    patch "/reservations/#{reservation.id}.json"
    assert_response 401
  end

  test "destroy" do
    assert_difference "Reservation.count", -1 do
      delete "/reservations/#{Reservation.first.id}.json", headers: { "Authorization" => "Bearer #{@jwt}" }
      assert_response 200
    end
    delete "/reservations/#{Reservation.first.id}.json"
    assert_response 401
  end
end
