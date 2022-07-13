require "test_helper"

class RatingarticoliControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rating_articolo = rating_articoli(:one)
  end

  test "should get index" do
    get rating_articoli_url
    assert_response :success
  end

  test "should get new" do
    get new_rating_articolo_url
    assert_response :success
  end

  test "should create rating_articolo" do
    assert_difference("RatingArticolo.count") do
      post rating_articoli_url, params: { rating_articolo: {  } }
    end

    assert_redirected_to rating_articolo_url(RatingArticolo.last)
  end

  test "should show rating_articolo" do
    get rating_articolo_url(@rating_articolo)
    assert_response :success
  end

  test "should get edit" do
    get edit_rating_articolo_url(@rating_articolo)
    assert_response :success
  end

  test "should update rating_articolo" do
    patch rating_articolo_url(@rating_articolo), params: { rating_articolo: {  } }
    assert_redirected_to rating_articolo_url(@rating_articolo)
  end

  test "should destroy rating_articolo" do
    assert_difference("RatingArticolo.count", -1) do
      delete rating_articolo_url(@rating_articolo)
    end

    assert_redirected_to rating_articoli_url
  end
end
