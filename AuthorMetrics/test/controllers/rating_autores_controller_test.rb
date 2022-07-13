require "test_helper"

class RatingAutoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rating_autore = rating_autores(:one)
  end

  test "should get index" do
    get rating_autores_url
    assert_response :success
  end

  test "should get new" do
    get new_rating_autore_url
    assert_response :success
  end

  test "should create rating_autore" do
    assert_difference("RatingAutore.count") do
      post rating_autores_url, params: { rating_autore: {  } }
    end

    assert_redirected_to rating_autore_url(RatingAutore.last)
  end

  test "should show rating_autore" do
    get rating_autore_url(@rating_autore)
    assert_response :success
  end

  test "should get edit" do
    get edit_rating_autore_url(@rating_autore)
    assert_response :success
  end

  test "should update rating_autore" do
    patch rating_autore_url(@rating_autore), params: { rating_autore: {  } }
    assert_redirected_to rating_autore_url(@rating_autore)
  end

  test "should destroy rating_autore" do
    assert_difference("RatingAutore.count", -1) do
      delete rating_autore_url(@rating_autore)
    end

    assert_redirected_to rating_autores_url
  end
end
