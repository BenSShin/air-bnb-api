require "test_helper"

class ReservationsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/reservations.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Reservation.count, data.length
  end

  test "show" do
    get "/reservations/#{Reservation.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "user_id", "room_id", "start_date", "end_date", "price", "total", "created_at", "updated_at"], data.keys
  end
end
