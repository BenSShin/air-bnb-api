require "test_helper"

class ReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = User.create(name: "Admin", email: "admin@example.com", password: "password")
    post "/sessions.json", params: { email: "admin@example.com", password: "password" }
    data = JSON.parse(response.body)
    @jwt = data["jwt"]
    @room = Room.create(user_id: @user.id, address: "123 Fake St", city: "Fakesville", state: "IL", price: 99, description: "Oh it's real nice.", home_type: "House", room_type: "Entire Home", total_occupancy: 6, total_bedrooms: 3, total_bathrooms: 2.0)
    @reservation = Reservation.create(user_id: @user.id, room_id: @room.id, start_date: Date.new(2024, 1, 20), end_date: Date.new(2024, 1, 28))
  end

  test "create" do
    assert_difference "Review.count", 1 do
      post "/reviews.json", headers: { "Authorization" => "Bearer #{@jwt}" }, params: { reservation_id: @reservation.id, rating: 3, comment: "comment" }
      data = JSON.parse(response.body)
      assert_response 201
      # refute_nil data["id"]
    end
    post "/reviews.json"
    assert_response 401
  end

  test "index" do
    get "/reviews.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Review.count, data.length
  end

  test "show" do
    get "/reviews/#{Review.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "reservation_id", "rating", "comment"], data.keys
  end

  test "update" do
    review = Review.first
    patch "/reviews/#{review.id}.json", headers: { "Authorization" => "Bearer #{@jwt}" }, params: { comment: "comment" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "comment", data["comment"]

    patch "/reviews/#{review.id}.json"
    assert_response 401
  end

  test "destroy" do
    assert_difference "Review.count", -1 do
      delete "/reviews/#{Review.first.id}.json", headers: { "Authorization" => "Bearer #{@jwt}" }
      assert_response 200
    end
  end
end
