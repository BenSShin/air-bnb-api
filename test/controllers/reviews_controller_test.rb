require "test_helper"

class ReviewsControllerTest < ActionDispatch::IntegrationTest

  test "index" do
    get "/reviews.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Review.count, data.length
  end
  
  test "create" do
    assert_difference "Review.count", 1 do
      post "/reviews.json", params: { reservation_id: 1 , rating: 800, comment: "comment" }
      assert_response 201
    end
  end
  
  test "show" do
    get "/reviews/#{Review.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["reservation_id", "rating", "comment"], data.keys
  end
  
  test "update" do
    review = Review.first
    patch "/reviews/#{review.id}.json", params: { comment: "comment" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "comment", data["comment"]
  end

  test "destroy" do
    assert_difference "Review.count", -1 do
      delete "/reviews/#{Review.first.id}.json"
      assert_response 200
    end
  end

  
end
