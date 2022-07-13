require "test_helper"

class AutorePreferitosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @autore_preferito = autore_preferitos(:one)
  end

  test "should get index" do
    get autore_preferitos_url
    assert_response :success
  end

  test "should get new" do
    get new_autore_preferito_url
    assert_response :success
  end

  test "should create autore_preferito" do
    assert_difference("AutorePreferito.count") do
      post autore_preferitos_url, params: { autore_preferito: {  } }
    end

    assert_redirected_to autore_preferito_url(AutorePreferito.last)
  end

  test "should show autore_preferito" do
    get autore_preferito_url(@autore_preferito)
    assert_response :success
  end

  test "should get edit" do
    get edit_autore_preferito_url(@autore_preferito)
    assert_response :success
  end

  test "should update autore_preferito" do
    patch autore_preferito_url(@autore_preferito), params: { autore_preferito: {  } }
    assert_redirected_to autore_preferito_url(@autore_preferito)
  end

  test "should destroy autore_preferito" do
    assert_difference("AutorePreferito.count", -1) do
      delete autore_preferito_url(@autore_preferito)
    end

    assert_redirected_to autore_preferitos_url
  end
end
