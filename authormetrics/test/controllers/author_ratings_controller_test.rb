require "test_helper"

class AuthorRatingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @author_rating = author_ratings(:one)
  end

  test "should get index" do
    get author_ratings_url
    assert_response :success
  end

  test "should get new" do
    get new_author_rating_url
    assert_response :success
  end

  test "should create author_rating" do
    assert_difference("AuthorRating.count") do
      post author_ratings_url, params: { author_rating: { author_id: @author_rating.author_id, rating: @author_rating.rating, user_id: @author_rating.user_id } }
    end

    assert_redirected_to author_rating_url(AuthorRating.last)
  end

  test "should show author_rating" do
    get author_rating_url(@author_rating)
    assert_response :success
  end

  test "should get edit" do
    get edit_author_rating_url(@author_rating)
    assert_response :success
  end

  test "should update author_rating" do
    patch author_rating_url(@author_rating), params: { author_rating: { author_id: @author_rating.author_id, rating: @author_rating.rating, user_id: @author_rating.user_id } }
    assert_redirected_to author_rating_url(@author_rating)
  end

  test "should destroy author_rating" do
    assert_difference("AuthorRating.count", -1) do
      delete author_rating_url(@author_rating)
    end

    assert_redirected_to author_ratings_url
  end
end
