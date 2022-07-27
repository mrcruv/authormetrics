require "test_helper"

class PublicationRatingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @publication_rating = publication_ratings(:one)
  end

  test "should get index" do
    get publication_ratings_url
    assert_response :success
  end

  test "should get new" do
    get new_publication_rating_url
    assert_response :success
  end

  test "should create publication_rating" do
    assert_difference("PublicationRating.count") do
      post publication_ratings_url, params: { publication_rating: { publication_id: @publication_rating.publication_id, rating: @publication_rating.rating, rating_timestamp: @publication_rating.rating_timestamp, user_id: @publication_rating.user_id } }
    end

    assert_redirected_to publication_rating_url(PublicationRating.last)
  end

  test "should show publication_rating" do
    get publication_rating_url(@publication_rating)
    assert_response :success
  end

  test "should get edit" do
    get edit_publication_rating_url(@publication_rating)
    assert_response :success
  end

  test "should update publication_rating" do
    patch publication_rating_url(@publication_rating), params: { publication_rating: { publication_id: @publication_rating.publication_id, rating: @publication_rating.rating, rating_timestamp: @publication_rating.rating_timestamp, user_id: @publication_rating.user_id } }
    assert_redirected_to publication_rating_url(@publication_rating)
  end

  test "should destroy publication_rating" do
    assert_difference("PublicationRating.count", -1) do
      delete publication_rating_url(@publication_rating)
    end

    assert_redirected_to publication_ratings_url
  end
end
