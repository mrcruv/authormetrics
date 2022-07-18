require "test_helper"

class AutoriControllerTest < ActionDispatch::IntegrationTest
  setup do
    @autore = autori(:one)
  end

  test "should get index" do
    get autori_url
    assert_response :success
  end

  test "should get new" do
    get new_autore_url
    assert_response :success
  end

  test "should create autore" do
    assert_difference("Autore.count") do
      post autori_url, params: { autore: {  } }
    end

    assert_redirected_to autore_url(Autore.last)
  end

  test "should show autore" do
    get autore_url(@autore)
    assert_response :success
  end

  test "should get edit" do
    get edit_autore_url(@autore)
    assert_response :success
  end

  test "should update autore" do
    patch autore_url(@autore), params: { autore: {  } }
    assert_redirected_to autore_url(@autore)
  end

  test "should destroy autore" do
    assert_difference("Autore.count", -1) do
      delete autore_url(@autore)
    end

    assert_redirected_to autori_url
  end
end
