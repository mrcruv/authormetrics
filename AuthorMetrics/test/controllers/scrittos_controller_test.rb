require "test_helper"

class ScrittoControllerTest < ActionDispatch::IntegrationTest
  setup do
    @scritto = scritto(:one)
  end

  test "should get index" do
    get scritto_url
    assert_response :success
  end

  test "should get new" do
    get new_scritto_url
    assert_response :success
  end

  test "should create scritto" do
    assert_difference("Scritto.count") do
      post scritto_url, params: { scritto: {  } }
    end

    assert_redirected_to scritto_url(Scritto.last)
  end

  test "should show scritto" do
    get scritto_url(@scritto)
    assert_response :success
  end

  test "should get edit" do
    get edit_scritto_url(@scritto)
    assert_response :success
  end

  test "should update scritto" do
    patch scritto_url(@scritto), params: { scritto: {  } }
    assert_redirected_to scritto_url(@scritto)
  end

  test "should destroy scritto" do
    assert_difference("Scritto.count", -1) do
      delete scritto_url(@scritto)
    end

    assert_redirected_to scritto_url
  end
end